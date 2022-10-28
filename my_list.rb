require_relative './my_enumerable.rb'

class MyList 
    def initialize (list)
        @list = list 
    end

    def each 
        for i in 0...@list.length do
            yield(@list[i])
        end
    end
    include MyEnumerable
end

