class BetaController  <  DashboardsController
  has_widgets do |root|
    root << widget("pet", :rat, {:name => "Rato", :color => "black"})
    root << widget("pet", :snake, {:name => "Snakeo", :color => "brown"})
    root << widget("pet", :cockroach, {:name => "Cockroacho", :color => "goldenrod"})    
  end
  
  def show
    super
  end
end
