require 'rails/railtie'

module Coffee
  module Rails
    class Railtie < ::Rails::Railtie
      config.app_generators.javascript_engine :coffee
    end
  end
end
