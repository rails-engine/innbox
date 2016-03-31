require 'test_helper'

class MailsTest < ActiveSupport::TestCase
  test ".config" do
    assert_kind_of Mails::Configuration, Mails.config
  end
end
