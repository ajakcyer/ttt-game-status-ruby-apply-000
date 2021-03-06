# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
  
  def won?(board)
    WIN_COMBINATIONS.each do |wins|
      if board[wins[0]] == "X" && board[wins[1]] == "X" && board[wins[2]] == "X"
        return wins
      elsif board[wins[0]] == "O" && board[wins[1]] == "O" && board[wins[2]] == "O"
        return wins
      end
    end
      false
  end
  
  def full?(board)
    board.all? do |element|
      element == "X" || element == "O"
    end
  end
  
  def draw?(board)
    if !won?(board) && full?(board)
      true
    end
  end
  
  def over?(board)
    if won?(board) || draw?(board) || full?(board)
      true
    end
  end
  
  def winner(board)
    WIN_COMBINATIONS.each do |wins|
      if board[wins[0]] == "X" && board[wins[1]] == "X" && board[wins[2]] == "X"
        return "X"
      elsif board[wins[0]] == "O" && board[wins[1]] == "O" && board[wins[2]] == "O"
        return "O"
      end
    end
    if !won?(board)
      return nil
    end
  end 