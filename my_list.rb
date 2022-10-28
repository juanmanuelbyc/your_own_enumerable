require_relative './my_enumerable'

class MyList
  def initialize(*list)
    @list = list
  end

  def each
    (0...@list.length).each do |i|
      yield(@list[i])
    end
  end
  include MyEnumerable
end

# # Create our list
# list = MyList.new(1, 2, 3, 4)
# # <MyList: @list=[1, 2, 3, 4]>

# # Test #all?
# puts list.all? { |e| e < 5 }
# # => true
# puts list.all? { |e| e > 5 }
# # => false

# # Test #any?
# puts list.any? { |e| e == 2 }
# # => true
# puts list.any? { |e| e == 5 }
# # => false

# # Test #filter
# print list.filter(&:even?)
# # => [2, 4]
