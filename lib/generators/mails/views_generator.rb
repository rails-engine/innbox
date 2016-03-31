# coding: utf-8
require 'rails/generators'
module Mails
  module Generators
    class ViewsGenerator < Rails::Generators::Base #:nodoc:
      source_root File.expand_path("../../../../app/views", __FILE__)
      desc "Used to copy Mails's views to your application's views."

      def copy_views
        directory 'homeland', "app/views/mails"
        directory 'layouts/mails', "app/views/layouts/mails"
      end
    end
  end
end
