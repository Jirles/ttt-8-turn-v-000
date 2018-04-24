def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def move(board, index, player='X')
  board[index] = player
end


def input_to_index(input)
  input.to_i - 1 
end 


def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    true 
  else
    false
  end
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
    false 
  else
    true 
  end
end


def turn 
#ask for input
  puts "Please enter 1-9:"
#get input
  input = gets.strip
#convert input to index
  index = input_to_index(input)
#if index is valid
  if valid_move?(board, index)
 # make the move for index
 # show the board
#else
 # ask for input again until you get a valid input
end