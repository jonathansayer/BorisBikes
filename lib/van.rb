class Van
  
  include BikeContainer

  def unload_bike
    fail 'No bikes available' unless available_bikes? 

    remove_bike
  end

  def load bike
    add_bike bike
  end

end