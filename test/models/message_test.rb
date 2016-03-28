require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test '.read?' do
    note = create(:message)
    assert_equal false, note.read?

    note.update_attribute(:read_at, Time.now)
    assert_equal true, note.read?
  end
end
