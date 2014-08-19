require "test_helper"

class ItemTest < ActiveSupport::TestCase

  def item
    @item ||= Item.new
  end

  def test_valid
    assert item.valid?
  end

end
