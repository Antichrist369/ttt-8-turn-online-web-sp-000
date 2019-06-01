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


   plays a correct board after a valid turn (FAILED - 7)

Failures:

  1) ./lib/turn.rb #turn asks the user for input by printing: "Please enter 1-9:"
     Failure/Error: if board >= ["X", "O"]

     NoMethodError:
       undefined method `>=' for [" ", " ", " ", " ", " ", " ", " ", " ", " "]:Array
     # ./lib/turn.rb:21:in `turn'
     # ./spec/turn_spec.rb:85:in `block (3 levels) in <top (required)>'

  2) ./lib/turn.rb #turn gets the user input
     Failure/Error: if board >= ["X", "O"]

     NoMethodError:
       undefined method `>=' for [" ", " ", " ", " ", " ", " ", " ", " ", " "]:Array
     # ./lib/turn.rb:21:in `turn'
     # ./spec/turn_spec.rb:94:in `block (3 levels) in <top (required)>'

  3) ./lib/turn.rb #turn calls the input_to_index method
     Failure/Error: if board >= ["X", "O"]

     NoMethodError:
       undefined method `>=' for [" ", " ", " ", " ", " ", " ", " ", " ", " "]:Array
     # ./lib/turn.rb:21:in `turn'
     # ./spec/turn_spec.rb:105:in `block (3 levels) in <top (required)>'

  4) ./lib/turn.rb #turn validates the input correctly
     Failure/Error: if board >= ["X", "O"]

     NoMethodError:
       undefined method `>=' for [" ", " ", " ", " ", " ", " ", " ", " ", " "]:Array
     # ./lib/turn.rb:21:in `turn'
     # ./spec/turn_spec.rb:115:in `block (3 levels) in <top (required)>'

  5) ./lib/turn.rb #turn asks for input again after a failed validation
     Failure/Error: if board >= ["X", "O"]

     NoMethodError:
       undefined method `>=' for [" ", " ", " ", " ", " ", " ", " ", " ", " "]:Array
     # ./lib/turn.rb:21:in `turn'
     # ./spec/turn_spec.rb:126:in `block (3 levels) in <top (required)>'

  6) ./lib/turn.rb #turn makes valid moves
     Failure/Error: if board >= ["X", "O"]

     NoMethodError:
       undefined method `>=' for [" ", " ", " ", " ", " ", " ", " ", " ", " "]:Array
     # ./lib/turn.rb:21:in `turn'
     # ./spec/turn_spec.rb:136:in `block (3 levels) in <top (required)>'

  7) ./lib/turn.rb #turn displays a correct board after a valid turn
     Failure/Error: if board >= ["X", "O"]

     NoMethodError:
       undefined method `>=' for [" ", " ", " ", " ", " ", " ", " ", " ", " "]:Array
     # ./lib/turn.rb:21:in `turn'
     # ./spec/turn_spec.rb:146:in `block (4 levels) in <top (required)>'
     # ./spec/spec_helper.rb:24:in `capture_puts'
     # ./spec/turn_spec.rb:146:in `block (3 levels) in <top (required)>'

Finished in 0.0208 seconds (files took 0.15492 seconds to load)
13 examples, 7 failures

Failed examples:

rspec ./spec/turn_spec.rb:78 # ./lib/turn.rb #turn asks the user for input by printing: "Please enter 1-9:"
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