# -*- encoding : utf-8 -*-
require "calameo_api/version"
require "calameo_api/request"
require "calameo_api/api"
require "calameo_api/base"
require "calameo_api/models"

#http://www.calameo.com/documentation/api/
module Calameo
  ## CONFIGURATION OPTIONS
  mattr_accessor :api_key
  @@api_key = ""
  mattr_accessor :secret
  @@secret = ""
  
  def self.setup
    yield self
  end
end