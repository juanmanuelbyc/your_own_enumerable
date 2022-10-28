module MyEnumerable
    def all? 
        for i in 0...@list.length do
            response = yield(@list[i])
            if(response == false)
                return false
            end  
        end
        return true
    end

    def any?
        for i in 0...@list.length do
            result = yield(@list[i])
            if(result == true)
                return true
            end
        end
        return false
    end
end