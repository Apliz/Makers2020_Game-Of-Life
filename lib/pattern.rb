class Pattern

  attr_accessor :loaf, :toad, :test

  def initialize()
  end

  def loaf(grid)
    grid = [
      [0, 0, 0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 1, 1, 0, 0], 
      [0, 0, 0, 1, 0, 0, 1, 0], 
      [0, 0, 0, 0, 1, 0, 1, 0], 
      [0, 0, 0, 0, 0, 1, 0, 0], 
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0]
    ]
  end
  
  def toad(grid)
    grid = [
      [0, 0, 0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 1, 1, 0, 0], 
      [0, 0, 0, 1, 0, 0, 1, 0], 
      [0, 0, 0, 0, 1, 0, 1, 0], 
      [0, 0, 0, 0, 0, 1, 0, 0], 
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0]
    ]
  end

  def test(grid)
    grid = [
      [0, 1, 1, 0, 1, 1, 1, 0], 
      [0, 0, 0, 1, 0, 1, 0, 0], 
      [0, 1, 0, 1, 1, 0, 1, 0], 
      [0, 0, 0, 0, 0, 1, 1, 0], 
      [0, 0, 0, 0, 0, 0, 1, 0], 
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0]
    ] 
  end
end