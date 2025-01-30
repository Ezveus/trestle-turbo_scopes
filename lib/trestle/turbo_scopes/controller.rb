module Trestle
  module TurboScopes
    module Controller
      def turbo_scopes
        respond_to do |format|
          format.html { render partial: 'trestle/turbo_scopes/turbo_scopes' }
          format.turbo_stream { render turbo_stream: turbo_stream.replace(:turbo_scopes, partial: 'trestle/turbo_scopes/turbo_scopes') }
        end
      end
    end
  end
end
