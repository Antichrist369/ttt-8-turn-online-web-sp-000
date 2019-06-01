#display_board 
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

#turn
def turn(board)
    puts "Plaese enter 1-9:"
end 

# valid_move?  
def valid_move?(board, index) 
   true if !position_taken?(board, index) && index.between?(0, 8)
 end
 
#position_taken?

 def position_taken?(board, index) 
   board[index] != " "
 end