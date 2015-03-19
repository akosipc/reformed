require "rails/generators/base"

module Reformed
  class UninstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    desc "Reformed Uninstallation"

    def uninstall
      remove_file "config/initializers/reformed.rb"
    end
  end
end

