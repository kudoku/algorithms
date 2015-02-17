def to_hash(tuple)
  tuple.inject({}) do |sum, element|
    sum[element.first] = element.last
    sum
  end
end


tuple = [ ['a',1], ['b',2], ['c','3' ] ]
p to_hash(tuple)



class Array
  def to_hash
    self.inject({}) do |sum, element|
      sum[element.first] = element.last
      sum
    end
  end

  public :to_hash
end


tuple = [ ['a',1], ['b',2], ['c','3' ] ]
p tuple.to_hash