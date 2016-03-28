# coding: utf-8
require 'rails/generators'
module Innbox
  module Generators
    class ControllersGenerator < Rails::Generators::Base #:nodoc:
      source_root File.expand_path("../../../../app/controllers", __FILE__)
      desc "Used to copy Innbox's controllers to your application's controllers."

      def copy_controllers
        %w(nodes replies topics).each do |fname|
          path = "#{Rails.root}/app/controllers/innbox/#{fname}_controller.rb"
          if File.exists?(path)
            puts "Skipping innbox/#{fname}_controller.rb creation, as file already exists!"
          else
            puts "Adding controller (innbox/#{fname}_controller.rb)..."
            template "innbox/#{fname}_controller.rb", path
          end
        end
      end
    end
  end
end
