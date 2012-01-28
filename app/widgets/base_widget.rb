class BaseWidget < Apotomo::Widget
  has_widgets do 
    self << widget("base/child", :child_1, {:name => "child 1"})
    self << widget("base/child", :child_2, {:name => "child 2"})
  end
  
  def display
    render
  end

end
