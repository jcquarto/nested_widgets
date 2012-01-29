require 'test_helper'

class AlienWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:alien)
  end
  
  test "display" do
    render_widget :alien
    assert_select "h1"
  end
end
