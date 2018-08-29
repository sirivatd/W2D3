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