require 'ostruct'
module Calameo
  module Base
    extend ActiveSupport::Concern
    module ClassMethods
      include Calameo::Request
      include Calameo::Api
      
      def api_method(name, type = :get, api_url, response_type)
        define_singleton_method name do |params = {}|
          hash = api_call api_url, type, "API.#{name}", params
          return response_type.create hash if response_type.is_a?(Items::ResponseObject)
          return response_type.new hash if response_type.is_a?(OpenStruct)
          return nil if response_type.is_a?(NilClass)
          raise 'Unknown return type in configuration'
        end
      end
    end
  end
end

