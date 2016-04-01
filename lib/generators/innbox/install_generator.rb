require 'rails/generators'
module Innbox
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Create Innbox's base files"
      source_root File.expand_path("../../../../", __FILE__)

      def add_initializer
        path = "#{Rails.root}/config/initializers/innbox.rb"
        if File.exists?(path)
          puts "Skipping config/initializers/innbox.rb creation, as file already exists!"
        else
          puts "Adding Innbox initializer (config/initializers/innbox.rb)..."
          template "config/initializers/innbox.rb", path
        end
      end

      def add_models
        path = "#{Rails.root}/app/models/message.rb"
        if File.exists?(path)
          puts "Skipping message.rb creation, as file already exists!"
        else
          puts "Adding model (message.rb)..."
          template "app/models/message.rb", path
        end
      end

      def add_migrations
        exec("rails innbox:install:migrations")
      end
    end
  end
end
