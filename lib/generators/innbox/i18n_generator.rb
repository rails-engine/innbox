require 'rails/generators'
module Innbox
  module Generators
    class I18nGenerator < Rails::Generators::Base
      desc "Create Innbox's default I18n files"
      source_root File.expand_path("../../../../", __FILE__)

      def add_locales
        %w(en.yml zh-CN.yml).each do |fname|
          path = "#{Rails.root}/config/locales/innbox.#{fname}"
          if File.exists?(path)
            puts "Skipping config/locales/innbox.#{fname} creation, as file already exists!"
          else
            puts "Adding locale (config/locales/innbox.#{fname})..."
            template "config/locales/innbox.#{fname}", path
          end
        end
      end

    end
  end
end
