module Alpha
  has_widgets do |root|
    root << widget("pets", :rat, {:name => "Rato", :color => "black"})
    root << widget("pets", :snake, {:name => "Snakeo", :color => "brown"})
  end