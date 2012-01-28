require 'test_helper'

class HumanWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:human)
  end
  
  test "display" do
    render_widget :human
    assert_select "h1"
  end
end
