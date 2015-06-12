require 'bike'

class Garage

  include BikeContainer

  def release_bike
    fail 'No bikes available' unless available_bikes? 

    index = bikes.find_index &:working
    bikes.delete_at index
  end

  def store bike
    add_bike bike
  end

  def fix
    bike = bikes.find &:broken?
    bike.fix
  end

  private

  def available_bikes?
    bikes.any? &:working 
  end

end
