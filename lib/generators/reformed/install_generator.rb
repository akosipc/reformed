require "rails/generators/base"

module Reformed
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    desc "Reformed Installation"

    def install
      initializer = (File.open(Rails.root.join("config/initializers/reformed.rb")) rescue nil).try :read
      template "reformed.erb", "config/initializers/reformed.rb" unless initializer
    end

  end
end

