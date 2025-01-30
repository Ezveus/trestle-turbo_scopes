module Trestle
  module TurboScopes
    module Resource
      extend ActiveSupport::Concern

      included do
        # Include custom #collection method on Resource class
        singleton_class.send(:prepend, Collection)
      end

      module Collection
        def turbo_scopes
          adapter.turbo_scopes
        end
      end

      module ClassMethods
        def turbo_scopesable?
          adapter.respond_to?(:turbo_scopes)
        end
      end
    end
  end
end
