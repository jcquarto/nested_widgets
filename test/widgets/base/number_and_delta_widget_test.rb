require 'test_helper'

class Base::NumberAndDeltaWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:number_and_delta)
  end
  
  test "display" do
    render_widget :number_and_delta
    assert_select "h1"
  end
end
