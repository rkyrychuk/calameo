# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "calameo_api/version"

Gem::Specification.new do |s|
  s.name        = "calameo_api"
  s.version     = Calameo::VERSION
  s.authors     = ["Ruslan Kyrychuk"]
  s.email       = ["ruslan.kyrychuk@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Calameo API }
  s.description = %q{http://www.calameo.com/documentation/api/index.htm}

  s.rubyforge_project = "calameo_api"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  #s.add_development_dependency "rspec"
  s.add_runtime_dependency "multipart-post"
  s.add_runtime_dependency "rails"
end
