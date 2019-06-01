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


  rn_spec.rb:78 # ./lib/turn.rb #turn asks the user for input by printing: "Please enter 1-9:"
rspec ./spec/turn_spec.rb:88 # ./lib/turn.rb #turn gets the user input
rspec ./spec/turn_spec.rb:97 # ./lib/turn.rb #turn calls the input_to_index method
rspec ./spec/turn_spec.rb:108 # ./lib/turn.rb #turn validates the input correctly
rspec ./spec/turn_spec.rb:118 # ./lib/turn.rb #turn asks for input again after a failed validation
rspec ./spec/turn_spec.rb:129 # ./lib/turn.rb #turn makes valid moves
rspec ./spec/turn_spec.rb:141 # ./lib/turn.rb #turn displays a correct board after a valid turn

[04:04:47] (master) ttt-8-turn-online-web-sp-000
// ♥

# valid_move?  
def valid_move?(board, index) 
   true if !position_taken?(board, index) && index.between?(0, 8)
 end
 
#position_taken?

 def position_taken?(board, index) 
   board[index] != " "
 end