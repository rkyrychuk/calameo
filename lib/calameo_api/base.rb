module Calameo
  module Base
    extend ActiveSupport::Concern
    module ClassMethods
      include Calameo::Request
      include Calameo::Api
      
      def api_method(name, type = :get, api_url, response_type)
        define_singleton_method name do |params = {}|
          hash = api_call api_url, type, "API.#{name}", params
          return nil if response_type.is_a?(NilClass)
          response_type.new hash 
        end
      end
    end
  end
end

