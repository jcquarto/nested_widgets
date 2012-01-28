require 'test_helper'

class BaseWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:base)
  end
  
  test "display" do
    render_widget :base
    assert_select "h1"
  end
end
