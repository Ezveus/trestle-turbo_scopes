require_relative 'lib/trestle/turbo_scopes/version'

Gem::Specification.new do |spec|
  spec.name          = "trestle-turbo_scopes"
  spec.version       = Trestle::TurboScopes::VERSION

  spec.authors       = ["Matthieu Ciappara"]
  spec.email         = ["matthieu.ciappara@outlook.com"]

  spec.summary       = "Asynchronous scope loading plugin for the Trestle admin framework"
  spec.homepage      = "https://github.com/Ezveus/trestle-turbo_scopes"
  spec.license       = "LGPL-3.0-only"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  end

  spec.require_paths = ["lib"]

  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Ezveus/trestle-turbo_scopes"

  spec.add_dependency "trestle", "~> 0.10.1"

  spec.add_development_dependency "rspec-rails"
end
