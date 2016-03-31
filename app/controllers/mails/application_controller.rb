module Mails
  class ApplicationController < ::ApplicationController
    helper_method :current_user, :owner?, :admin?

    alias_method :origin_current_user, Mails.config.current_user_method.to_sym
    alias_method :origin_authenticate_user!, Mails.config.authenticate_user_method.to_sym

    def current_user
      origin_current_user
    end

    def authenticate_user!
      origin_authenticate_user!
    end

    def set_seo_meta(title = '', meta_keywords = '', meta_description = '')
      @page_title = "#{title}" if title.length > 0
      @meta_keywords = meta_keywords
      @meta_description = meta_description
    end
  end
end
