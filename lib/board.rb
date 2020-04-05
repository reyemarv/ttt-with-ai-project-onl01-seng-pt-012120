class Board
  
  attr_accessor :cells
  
  @@cells = []
  
  def initialize
    self.cells = Array.new(9, " ")
  end 
  
  def reset!
    self.cells.clear
    self.cells = Array.new(9, " ") 
  end 
  
  def display
    puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
    puts "-----------"
    puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
    puts "-----------"
    puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
  end 
  
  def position(input)
    i = input.to_i - 1 
    self.cells[i]
  end 
  
  def full?
    self.cells.all?{|cell| cell == "X" || cell == "O"}
  end
  
  def turn_count
    x = self.cells.count("X")
    o = self.cells.count("O")
    x + o 
  end 
  
  def taken?(input)
    self.position(input) == "X" || self.position(input) == "O"
  end 
  
  def valid_move?(input)
    !taken?(input) && input.to_i.between?(1, 9)
  end 
      
  
end 