class Array 
  
  def remove_dups
    seen = []
    self.each do |el|
      seen.push(el) unless seen.include?(el)
    end
    seen
  end
  
  def two_sum
    result = []
    i = 0
    while i < self.length
      j = i + 1
      while j < self.length
        result.push([i,j]) if self[i] + self[j] == 0
        j += 1
      end
      i += 1
    end
    result
  end
end

def my_transpose(arr)
  return nil if arr == [[]]
  raise ArgumentError unless arr.length == arr[0].length
  result = []
  i = 0
  while i < arr.length
    new_arr = []
    j = 0
    while j < arr.length
      new_arr.push(arr[j][i])
      j += 1
    end
    result.push(new_arr)
    i += 1
  end
  result
end

def stock_picker(arr)
  return nil if arr.empty?
  max_profit = 0
  start_day = -1
  end_day = -1
  
  i = 0
  while i < arr.length
    j = i + 1
    while j < arr.length
      if (arr[j] - arr[i]) > max_profit
        max_profit = arr[j] - arr[i]
        start_day = i + 1
        end_day = j + 1
      end
      j += 1
    end
    i += 1
  end
  return "No chance at profit!" if start_day == -1
  return [start_day, end_day]
end

class Stack
  attr_accessor :data
  def initialize(arr)
    @data = arr
  end
  
  def shift
    @data.shift
  end
  
  def add(num)
    @data = [num] + @data
  end
  
  def inspect
    #not doing anything here, just overriding
  end
  
end


class Hanoi
  attr_accessor :board
  
  def inspect
    #not doing anything here, just overriding
  end
  def initialize(size)
    starting_col = (1..size).to_a
    @board = [Stack.new(starting_col),Stack.new([]),Stack.new([])]
  end
  
  def render
    i = 0
    while i < @board.length
        print(@board[i].data)
        puts("")
        i += 1
    end
  end
  
  def won?
    i = 0
    empty_cols = 0
    return false unless @board[0].data.empty?
    while i < @board.length 
      empty_cols += 1 if @board[i].data.empty? 
      i += 1
    end
    return true if empty_cols >= @board.length - 1
    return false
  end
  
  def update_board(arr)
    if @board[arr[0]-1].data[0] == nil
      puts "Invalid move!"
      return
    end
    unless @board[arr[1]-1].data[0] == nil
      if @board[arr[0]-1].data[0] > @board[arr[1]-1].data[0]
        puts "Can't move there"
        return
      end
    end
    
    starting_disc = @board[arr[0]-1].shift
    @board[arr[1]-1].add(starting_disc)
    self.render
    puts ''
  end
  
  def make_move(input_string)
    arr = input_string.split(",").to_a
    arr.each_with_index do |el, i|
      arr[i] = el.to_i
    end
    update_board(arr)
  end
  
  def play
    moves = 0
    puts("Welcome to the Tower of Hanoi!")
    puts('')
    self.render
    puts('')
    until won?
      puts("Please make your move by entering a starting and ending location i.e. 1,2")
      make_move(gets.chomp)
      moves += 1
    end
    puts("Congratulations you solved the Tower with #{@board.length} discs in #{moves} turns!")
  end
  
  
end