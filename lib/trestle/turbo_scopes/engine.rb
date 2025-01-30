module Trestle
  module TurboScopes
    class Engine < ::Rails::Engine
      config.to_prepare do
        Trestle::ResourceController.send(:prepend, Trestle::TurboScopes::Controller)
      end

      initializer :extensions do
        Trestle::Resource.send(:include, Trestle::TurboScopes::Resource)
        Trestle::Resource::Builder.send(:include, Trestle::TurboScopes::Builder)
      end

      config.assets.precompile << "trestle-turbo_scopes.js"
    end
  end
end
