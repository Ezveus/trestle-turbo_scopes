module Trestle
  module TurboScopes
    module Builder
      def turbo_scopes(options={}, &block)
        admin.define_adapter_method(:turbo_scopes, &block)

        admin.additional_routes << proc do
          get :turbo_scopes, on: :collection
        end

        admin.scopes.options.merge!(options)
        admin.scopes.append(options, &block) if block_given?
      end
    end
  end
end
