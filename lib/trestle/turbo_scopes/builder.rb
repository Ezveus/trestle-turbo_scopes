module Trestle
  module TurboScopes
    module Builder
      def turbo_scopes(&block)
        admin.define_adapter_method(:turbo_scopes, &block)
      end
    end
  end
end
