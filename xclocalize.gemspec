# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xclocalize/version'

Gem::Specification.new do |spec|
  spec.name          = "xclocalize"
  spec.version       = XCLocalize::VERSION
  spec.authors       = ["Ogan Topkaya"]
  spec.email         = ["otopkaya@me.com"]
  spec.summary       = %q{Short Summary of gem}
  spec.description   = %q{Longer Description of gem}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
