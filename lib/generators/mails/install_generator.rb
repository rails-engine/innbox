require 'rails/generators'
module Mails
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Create Mails's base files"
      source_root File.expand_path("../../../../", __FILE__)

      def add_initializer
        path = "#{Rails.root}/config/initializers/mails.rb"
        if File.exists?(path)
          puts "Skipping config/initializers/mails.rb creation, as file already exists!"
        else
          puts "Adding Mails initializer (config/initializers/mails.rb)..."
          template "config/initializers/mails.rb", path
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
        exec("rails mails:install:migrations")
      end
    end
  end
end
