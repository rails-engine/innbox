require 'test_helper'

class InnboxTest < ActiveSupport::TestCase
  test ".config" do
    assert_kind_of Innbox::Configuration, Innbox.config
  end
end
