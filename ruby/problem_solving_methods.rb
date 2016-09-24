
# # Search Array Method
# def search_array(arr, num)

#   result = nil

#   index = 0
#   arr.each do |item|
#     if item == num
#       result = index
#     end
#     index += 1
#   end
#   return result
# end

# test_array = [4, 5, 8, 2, 9]
# p search_array(test_array, 14)


# # Calculate Fibonacci Numbers Method
# def fib(num)
#   index = 2
#   fib_array = [0,1]
#   while index < num
#     fib_array.push(fib_array[-1] + fib_array[-2])
#     index += 1
#   end
#   return fib_array
# end

# p fib(5)

# fib_100 = 218922995834555169026
# p fib_100 == fib(100)[-1]

#Bubble Sort Pseudocode
#Evaluate array index pairs
#If pairs are out of order switch placement in array
#Continue switching placements of index pairs until end of array
#Loop until no unordered pairs are found in array

#Bubble Sort Array Method
def sort_array(arr)
  if arr.length < 2
    return arr
  else
    is_sorted = false
    while is_sorted == false
      is_sorted = true
      index = 0
      while index < arr.length - 1
        if arr[index] > arr[index + 1]
          temp = arr[index]
          arr[index] = arr[index +1]
          arr[index +1] = temp
          is_sorted = false
        end
        index += 1
      end
    end
    return arr
  end
end

test_array = [2,5,6,78,89,1092837501928375,347,3,8,1,4,12]
p sort_array(test_array)
