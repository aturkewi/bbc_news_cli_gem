# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bbc_news_cli_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "bbc_news_cli_gem"
  spec.version       = BbcNewsCliGem::VERSION
  spec.authors       = ["Avidor Turkewitz"]
  spec.email         = ["aviturkewitz@gmail.com"]

  spec.summary       = %q{This gem allows you to read BBC News from your terminal}
  spec.description   = %q{You can list out the front_page headlines. For any specific article you can see a summary and choose to open it up in a browser. }
  spec.homepage      = "https://github.com/aturkewi/bbc_news_cli_gem/"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # spec.bindir        = "exe"
  spec.executables   = "bbc_news_cli_gem"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'nokogiri', "1.6.7.2"
  spec.add_development_dependency 'launchy', "2.4.3"
  spec.add_development_dependency 'pry', "0.10.3"
end
