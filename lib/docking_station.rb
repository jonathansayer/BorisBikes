require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 25
  
  attr_accessor :capacity
  attr_reader   :bikes 

  def initialize capacity = DEFAULT_CAPACITY
    @bikes    = []
    @capacity = capacity 
  end

  def release_bike
  	fail 'No bikes available' unless available_bikes? 

    index = bikes.find_index &:working
    bikes.delete_at index
  end

  def dock bike
    fail 'Docking station full' if full?
    bikes.push bike 
  end

  private

  def full?
    bikes.count >= capacity
  end

  def available_bikes?
    bikes.any? &:working 
  end

end
