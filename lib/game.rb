require_relative 'board.rb'
require_relative 'pattern.rb'

class Game

  attr_reader :current, :condition

  def initialize(board = Board.new, pattern = Pattern.new)
    @board = board
    @pattern = pattern
    @neighbours = 0
    @current = []
    @successor = [
      [0, 0, 0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0]
    ] 
  end


  # this method currently does not update instance method in initialize
  # from a seperate class. Is this possible to do? Must do research and check nect time. 
  def condition(option)
    case option
    when 'loaf'
      @pattern.loaf(@current)
    when 'toad'
      @pattern.toad(@current)
    when 'test'
      @pattern.test(@current)
    end
  end

  def test_board()
    p @current
  end

  def count_neighbours(x, y, grid = @current)
    [ [grid[y - 1][x - 1]],
      [grid[y - 1][x]],
      [grid[y - 1][x + 1]],
      [grid[y][x - 1]],
      [grid[y][x + 1]],
      [grid[y + 1][x - 1]],
      [grid[y + 1][x]],
      [grid[y + 1][x + 1]]
    ].each { |rule| @neighbours += 1 if rule == [1] }
  end

  def start(grid = @current)
    grid.each_with_index { |row, y|
      row.each_with_index { |cell, x|
        next if @board.check_edge(x, y) == true
        count_neighbours(x, y)
        @board.ruleset(x, y, grid, @neighbours) ? @successor[y][x] = 1 : @successor[y][x] = 0
        @neighbours = 0
      }
    }  
    @successor                                                                                                         
  end
end 