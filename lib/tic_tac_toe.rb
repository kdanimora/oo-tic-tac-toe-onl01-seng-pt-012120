class TicTacToe
  
def initialize.board
  @board = Array.new(9, " ")
  end 

  WIN_COMBINATIONS = [
    [0, 1, 2],  
    [3, 4, 5],  
    [6, 7, 8],  
    [0, 3, 6],  
    [1, 4, 7],  
    [2, 5, 8],
    [6, 4, 2],
    [0, 4, 8]
  ]
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def position(input)
    board(input.to_i-1)
end 

def full?
  board.all? do |character| 
    if  character == "X" || character == "O"
      true 
    else 
      false 
    end 
end 


 def turn_count 
   board.count{|character| character == "X" || character == "O"}
 end 
 
 def taken?(input)
  position(input) == "X" || position == "O"
 end 



