module Calameo
  module Base
    extend ActiveSupport::Concern
    module ClassMethods
      include Calameo::Request
      include Calameo::Api
      @@api_url = Api::COMMON_API_URL
      def api_url(api_url)
        @@api_url = api_url
      end
      def api_method(name, type = :get, api_url = nil)
        define_singleton_method name do |params = {}|
          api_call api_url || @@api_url, type, "API.#{name}", params
        end
      end
    end
  end
end

