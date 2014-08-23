require "test_helper"

class MessageResponseTest < ActiveSupport::TestCase

  def message_response
    @message_response ||= MessageResponse.new
  end

  def test_valid
    assert message_response.valid?
  end

end
