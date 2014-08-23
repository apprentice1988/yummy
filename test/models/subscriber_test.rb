require "test_helper"

class SubscriberTest < ActiveSupport::TestCase

  def subscriber
    @subscriber ||= Subscriber.new
  end

  def test_valid
    assert subscriber.valid?
  end

end
