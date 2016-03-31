require 'rails/generators'
module Mails
  module Generators
    class I18nGenerator < Rails::Generators::Base
      desc "Create Mails's default I18n files"
      source_root File.expand_path("../../../../", __FILE__)

      def add_locales
        %w(en.yml zh-CN.yml).each do |fname|
          path = "#{Rails.root}/config/locales/mails.#{fname}"
          if File.exists?(path)
            puts "Skipping config/locales/mails.#{fname} creation, as file already exists!"
          else
            puts "Adding locale (config/locales/mails.#{fname})..."
            template "config/locales/mails.#{fname}", path
          end
        end
      end

    end
  end
end
