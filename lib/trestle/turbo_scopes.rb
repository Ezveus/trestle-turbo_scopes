require_relative "turbo_scopes/version"

require "trestle"

module Trestle
  module TurboScopes
    require_relative "turbo_scopes/builder"
    require_relative "turbo_scopes/controller"
    require_relative "turbo_scopes/resource"
  end
end

require_relative "turbo_scopes/engine" if defined?(Rails)
