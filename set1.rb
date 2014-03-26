module Set1
  def self.swap_small(array)       # --- This is O(n)

    #return nil if empty
    if array.length == 0
      return nil
    end

    #find the smallest and its index
    smallest = array.first
    index = 0
    array.each_with_index do |x, i|
      if x < smallest
        smallest = x
        index = i
      end
    end

    temp = array[index]
    array[index] = array[0]
    array[0] = temp

    return array

  end

  def self.find_sum_2(array, sum = 0)     # -------- This is O(n^2)

    # if array is empty return false
    if array.length == 0
      return false
    end


    array.each do |x|
      array.each do |y|
        if (x + y == sum)
          return true
        end
      end
    end
    return false
  end

  def self.find_sum_3(array, sum=0)     # ----------- This is O(n^3)
    # if array is empty return false
    if array.length == 0
      return false
    end

    array.each do |x|
      array.each do |y|
        array.each do |z|
          if (x + y + z == sum)
            return true
          end
        end
      end
    end
    return false
  end


end
