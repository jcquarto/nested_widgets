class PetWidget < Apotomo::Widget

  def display
    setup!
    render
  end
  
  private
  def setup!
    @name = options[:name].nil? ? "undefined name" : options[:name]
    @color = options[:color].nil? ? "red" : options[:color]
  end

end
