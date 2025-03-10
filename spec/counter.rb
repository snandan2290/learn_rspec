class Counter

  attr_accessor :counter

  def initialize
    @counter ||=0
  end

  def increment
    @counter += 1
  end

  def decrement
    if @counter > 0
      @counter -= 1
    end
  end

end
