# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "adapter/pstore/version"

Gem::Specification.new do |s|
  s.name        = "adapter-pstore"
  s.version     = Adapter::PStore::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Guy Taglang"]
  s.email       = ["gtaglang@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Adapter for PStore}
  s.description = %q{Adapter for PStore}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'adapter', '~> 0.5.1'
end
