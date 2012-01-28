class GammaController < DashboardsController
  has_widgets do |root|
    root << widget( "pet", :pet1, {:name => "Pet1", :color => "orange"} )
    root << widget( "pet", :pet2, {:name => "Pet2", :color => "darkgreen"} )
    root << widget( "base", :experiment, {:title => "my widget title"} )
  end
  
  def show
    super
  end
  
end