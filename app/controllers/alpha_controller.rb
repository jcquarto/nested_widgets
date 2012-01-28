class AlphaController < DashboardsController
  has_widgets do |root|
    root << widget("pet", :cat, {:name => "Cato", :color => "red"})
    root << widget("pet", :dog, {:name => "Dogo", :color => "blue"})
  end
  
  def show
    super
  end
  
end
