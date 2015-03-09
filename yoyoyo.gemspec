# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yoyoyo/version'

Gem::Specification.new do |spec|
  spec.name          = "yoyoyo"
  spec.version       = Yoyoyo::VERSION
  spec.authors       = ["vivek"]
  spec.email         = ["vivekonrails@gmail.com"]
  spec.summary       = %q{Create a post }
  spec.description   = %q{Sample gem for create a post}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.files         = `git ls-files`.split("\n")
  spec.files         = Dir.glob("{bin,lib}/**/*")
  # spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "rails", ">= 4.0"
  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "sass-rails", ">= 4.0"
  spec.add_dependency "coffee-rails", ">= 4.0"
  spec.add_dependency "jquery-rails", ">= 3.0" 
  spec.add_dependency 'sass-rails', '>= 5.0'
  spec.add_dependency 'uglifier', '>= 1.3.0'
  spec.add_dependency 'turbolinks'
  spec.add_dependency 'jbuilder', '>= 2.0'
end
