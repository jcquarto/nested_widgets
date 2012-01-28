require 'test_helper'

class Base::ChildWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:child)
  end
  
  test "display" do
    render_widget :child
    assert_select "h1"
  end
end
