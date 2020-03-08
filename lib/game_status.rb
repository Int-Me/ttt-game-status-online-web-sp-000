# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  # ETC, an array for each win combination
]
def won?(board)
  counter = 0
  until counter == 9
    combo = WIN_COMBINATIONS[counter]
    if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" || board[combo[0]] == "O" &&board[combo[1]] == "O" &&board[combo[2]] == "O"
      return combo
    else return false
    end
    counter += 1
  end




end
