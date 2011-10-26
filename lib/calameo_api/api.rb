require 'digest/md5'


module Calameo
  class ApiException < StandardError
    attr_accessor :code
    def initialize(code, msg)
      self.code = code
      super(msg)
    end
  end
  module Api
    COMMON_API_URL = "http://api.calameo.com/1.0/"
    UPLOAD_API_URL = "http://upload.calameo.com/1.0/"
    
    def default_params
      { apikey: Calameo.api_key, expires: 1.day.from_now.to_i}
    end
    
    def api_call(api_url, method, action, params = {})
      args = default_params
      args = args.merge(params)
      args = args.merge({action: action, output: :json})
      args = make_signature(args)
      response_text = send(method, api_url, args)
      decode_response response_text
    end
    
    private
    # Make signature
    def make_signature(params)
      signature = Digest::MD5.hexdigest(Calameo.secret + params.reject {|k, v| v.respond_to?(:read) }.sort.map {|k, v| "#{k}#{v}" }.join)
      params.merge(signature: signature)
    end
    
    # Decode response
    def decode_response(response_text)
      response = ActiveSupport::JSON.decode(response_text)["response"]
      case response["status"]
      when 'ok' then 
        convert_value response["content"] 
      when 'error' then 
        error = response["error"]
        raise ApiException.new error["code"].to_i, error["message"]
      else 
        raise "Unknown response status"
      end
    end
    # Convert array values to openstruct
    def convert_array(array)
      array.map {|v| convert_value(v) }
    end
    # Convert hash values to openstruct
    def convert_hash(hash)
      Hash[hash.map { |k, v|  [k.underscore, convert_value(v)] }]
    end
    # Convert value to openstruct
    def convert_value(value)
      value = convert_hash(value) if value.is_a?(Hash)
      value = convert_array(value) if value.is_a?(Array)
      value
    end
  end
end