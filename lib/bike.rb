class Bike

  attr_accessor :working

  def initialize
    @working = true
  end

  def working?
    working
  end

  def report_broken
    self.working = false
  end

  def fix
    self.working = true
  end

  def broken?
    not working
  end

end

