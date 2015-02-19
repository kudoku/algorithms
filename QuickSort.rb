def quick_sort(unsorted)

  if unsorted.length > 1

    split = unsorted.sample

    left, right = unsorted.partition{ |element| element < split }
    # p left
    # p right
    quick_sort(left) + quick_sort(right)

  else
    unsorted
  end

end

asdf = (1..rand(40)).to_a.shuffle

p quick_sort(asdf)


