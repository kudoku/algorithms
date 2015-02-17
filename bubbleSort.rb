
def bubble_sort(unsorted_array)
  for i in 0..unsorted_array.length-1
    unsorted_array.each_with_index do | element, index |
      if index < unsorted_array.length - 1
        if element > unsorted_array[index+1]
          unsorted_array[index], unsorted_array[index+1] = unsorted_array[index+1], unsorted_array[index]
        end
      end
    end
  end
  unsorted_array
end

unsorted_array = [3, 1, 5, 20, 1, 15, 2 ]
p bubble_sort(unsorted_array)



