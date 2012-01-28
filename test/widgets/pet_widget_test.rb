require 'test_helper'

class PetWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:pet)
  end
  
  test "display" do
    render_widget :pet
    assert_select "h1"
  end
end
