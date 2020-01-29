# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board, index) == true
    puts "That position is already populated with a value. Please try again"
  elsif index.between?(0, 8) == false
    puts "That is an invalid input. Please enter a value between 1 and 9"
  else
    true
  end
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end