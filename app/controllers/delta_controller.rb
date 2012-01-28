class DeltaController < DashboardsController
  has_widgets do |root|
    root << widget( "pet", :fido, {:name => "Fido", :color => "orange"} )
  
    root << widget( "human", :harry, {:name => "Harry"} )
    root << widget( "human", :sally, {:name => "Sally"} )
  end
  
  def show
    super
  end
  
end