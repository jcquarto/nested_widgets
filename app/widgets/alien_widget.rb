class AlienWidget < Apotomo::Widget
  responds_to_event :ready
  responds_to_event :content_changed
  
  def display
    render :layout => "base"
  end
  
  def ready
    #replace("#initial_#{widget_id}", :view => :final)
    trigger :content_changed
    update "##{widget_id} .content", :view => :final
  end

  def content_changed
    update "##{widget_id} .header", :view => :initial
  end

end
