# def sort(array)
#   for i in array
#     for k in (array.length-1)
#       if 
#     end
#   end


# end



def bubble_sort(list)  
  list = list.dup    
  for i in 0...list.length  
    for j in 0..(list.length - 2)  
      list[j], list[j + 1] = list[j + 1], list[j]  if list[j + 1] < list[j]  
    end  
  end  
  return list  
end  

asdf = ['second', 'first', 'very last', 'second last']
p bubble_sort(asdf)
