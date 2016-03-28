# coding: utf-8
require 'rails/generators'
module Innbox
  module Generators
    class ViewsGenerator < Rails::Generators::Base #:nodoc:
      source_root File.expand_path("../../../../app/views", __FILE__)
      desc "Used to copy Innbox's views to your application's views."

      def copy_views
        directory 'homeland', "app/views/innbox"
        directory 'layouts/innbox', "app/views/layouts/innbox"
      end
    end
  end
end
