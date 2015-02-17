
def insertion_sort(array)

  for i in 1..array.length-1
    value = array[i]
    hole = i
    while hole > 0 && array[hole-1] > value
      array[hole] = array[hole-1]
      hole -= 1
    end
    array[hole] = value
  end
  array
end


unsorted_array = [2, 1, 6, 1, 20, 30, 4, 7]
p insertion_sort(unsorted_array)


def insertion_sort_each(array)
  array.each_with_index do | element, index |
    hole = index

    while hole > 0 && array[hole-1] > element
      array[hole] = array[hole-1]
      hole -= 1
    end

    array[hole] = element
  end
  array
end

unsorted_array = [2, 1, 6, 1, 20, 30, 4, 7]
p insertion_sort_each(unsorted_array)