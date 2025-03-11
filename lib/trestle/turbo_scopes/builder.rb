module Trestle
  module TurboScopes
    module Builder
      if Trestle::VERSION < '0.10.1'
        def turbo_scopes(options = {}, &block)
          admin.define_adapter_method(:turbo_scopes, &block)

          admin.additional_routes << proc do
            get :turbo_scopes, on: :collection
          end

          admin.scopes.options.merge!(options)
          admin.scopes.append(options, &block) if block_given?
        end
      else
        def turbo_scopes(defaults: {}, **options, &block)
          defaults = defaults.merge(options.slice(:count))

          admin.define_adapter_method(:turbo_scopes, &block)

          admin.additional_routes << proc do
            get :turbo_scopes, on: :collection
          end

          admin.scopes.apply_options!(options)
          admin.scopes.append(**defaults, &block) if block_given?
        end
      end
    end
  end
end
