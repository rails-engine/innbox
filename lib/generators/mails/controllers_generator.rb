# coding: utf-8
require 'rails/generators'
module Mails
  module Generators
    class ControllersGenerator < Rails::Generators::Base #:nodoc:
      source_root File.expand_path("../../../../app/controllers", __FILE__)
      desc "Used to copy Mails's controllers to your application's controllers."

      def copy_controllers
        %w(messages).each do |fname|
          path = "#{Rails.root}/app/controllers/mails/#{fname}_controller.rb"
          if File.exists?(path)
            puts "Skipping mails/#{fname}_controller.rb creation, as file already exists!"
          else
            puts "Adding controller (mails/#{fname}_controller.rb)..."
            template "mails/#{fname}_controller.rb", path
          end
        end
      end
    end
  end
end
