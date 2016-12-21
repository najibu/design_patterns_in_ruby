class Expression
  def |(other)
    Or.new(self, other)
  end

  def &(other)
    And.new(self, other)
  end

  def all
    All.new 
  end

  def name(pattern)
    FileName.new(pattern)
  end

  def bigger(size)
    Bigger.new(size)
  end

  def writable
    Writable.new 
  end

  def except(epression)
    Not.new(expression)
  end
end