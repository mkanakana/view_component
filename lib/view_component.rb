# frozen_string_literal: true

require "action_view"
require "active_support/dependencies/autoload"

module ViewComponent
  extend ActiveSupport::Autoload

  autoload :Base
  autoload :CaptureCompatibility
  autoload :Compiler
  autoload :CompileCache
  autoload :ComponentError
  autoload :Config
  autoload :Deprecation
  autoload :InlineTemplate
  autoload :Instrumentation
  autoload :Preview
  autoload :TestHelpers
  autoload :SystemTestHelpers
  autoload :TestCase
  autoload :SystemTestCase
  autoload :Translatable

  if defined?(Rails) && Rails.version < "7.0"
    Kernel.warn("ViewComponent v4 will drop support for Rails < 7.0 in 2025.")
  end
end

require "view_component/engine" if defined?(Rails::Engine)
