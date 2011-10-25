require 'net/http'
require 'cgi'
require 'composite_io'

module Calameo
  module Request
    # Send get
    def get(api_url, params)
      url = create_url(api_url, params)
      response = Net::HTTP.start(url.host, url.port) { |http|
        http.get [url.path, url.query].join("?")
      }
      response.body
    end
    # Send post
    def post(api_url, params)
      url = create_url(api_url, {})
      data = {}
      if params.values.any? {|v| v.respond_to?(:read) }
        params.each do |k, v|
          if v.respond_to?(:read)
            data[k] = UploadIO.new(v, content_type(v.path), Pathname.new(v.path).basename.to_s)
          else
            data[k] = v
          end
        end
        require 'net/http/post/multipart'
        req = Net::HTTP::Post::Multipart.new(url.path, data)
      else
        req = Net::HTTP::Post.new(url.path)
        req.set_form_data(data)
      end
      response = Net::HTTP.start(url.host, url.port) do |http|
        http.request(req)
      end
      response.body
    end
    private 
    # Get content type of file name by extension
    def content_type(filename)
      Mime::Type.lookup_by_extension(/(.*\.)(.*$)/.match(File.basename(filename))[2])
    end
    # Create url from base_url and params
    def create_url(api_url, params)
      query = params ? params.map {|k, v| [k.to_s, CGI::escape(v.to_s)].join("=")}.join("&") : ""
      url = api_url + (query ? "?#{query}" : "")
      URI.parse url
    end
  end
end