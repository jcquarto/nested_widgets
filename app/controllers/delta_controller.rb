class DeltaController < DashboardsController
  has_widgets do |root|
    root << widget( "pet", :fido, {:name => "Fido", :color => "orange"} )
  
    root << widget( "human", :harry, {:name => "Harry"} )
    root << widget( "human", :sally, {:name => "Sally"} )
    
    root << widget( "alien", :alf, {:name => "Alf"} )
    root << widget( "alien", :c3p0, {:name => "C3P0"} )
  end
  
  def show
    super
  end
  
end