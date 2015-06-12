require_relative 'bike'
require_relative 'bike_container'

class DockingStation
  
  include BikeContainer

  def release_bike
  	fail 'No bikes available' unless available_bikes? 

    index = bikes.find_index &:working
    bikes.delete_at index
  end

  def dock bike
    add_bike bike
  end

  private

  def available_bikes?
    bikes.any? &:working 
  end

end
