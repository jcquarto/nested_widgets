module Alpha
  has_widgets do |root|
    root << widget("pet", :cat, {:name => "Cato"})
    root << widget("pet", :dog, {:name => "Dogo"})
  end