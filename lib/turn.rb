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


def turn(board)
  # invalid index according to #valid_move? to initiate loop
  index = -1
  until valid_move?(board, index)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
  move(board, index)
  display_board(board)
#else
  
end