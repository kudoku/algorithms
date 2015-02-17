require 'pry'

def selection_sort(unsorted_array)
  for i in 0..unsorted_array.length - 1
    iMin = i
    for k in i+1..unsorted_array.length - 1
      if unsorted_array[k] <= unsorted_array[i]
        iMin = k
      end
    end
    # temp = unsorted_array[i]
    # unsorted_array[i] = unsorted_array[iMin]
    # unsorted_array[iMin] = temp

    unsorted_array[i], unsorted_array[iMin] = unsorted_array[iMin], unsorted_array[i]
  end
  unsorted_array
end

unsorted_array = [ 2, 20, 3, 4, 5, 7, 1 ]
p selection_sort(unsorted_array)




# recursion

def selection_sort_recursion(unsorted_array, sorted_array)
  if unsorted_array.length > 0
    @iMin = 0
    unsorted_array.each_with_index do |element, index|

        if element <= unsorted_array[@iMin]
          @iMin = index
        end

    end
    sorted_array << unsorted_array[@iMin]
    unsorted_array.delete_at(@iMin)
    selection_sort_recursion(unsorted_array, sorted_array)
  end
  sorted_array
end
unsorted_array = [ 2, 20, 3, 4, 1, 5, 7, 1 ]
sorted_array = []

p selection_sort_recursion(unsorted_array, sorted_array)