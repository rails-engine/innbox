module Mails
  module ApplicationHelper
    def render_errors(target)
      if target.errors.present?
        render partial: '/homeland/shared/error_messages', locals: { target: target }
      end
    end

    def timeago(time, options = {})
      options[:class] ||= "timeago"
      content_tag(:abbr, time.to_s, options.merge(:title => time.getutc.iso8601)) if time
    end

    def notice_message
      flash_messages = []

      flash.each do |type, message|
        type = :danger
        type = :success if type.to_sym == :notice
        close_button = raw %(<button type="button" class="close" data-dismiss="alert">×</button>)
        text = content_tag(:div, close_button + message, class: "alert alert-dismissible alert-#{type}")
        flash_messages << text if message
      end

      flash_messages.join("\n").html_safe
    end
  end
end
