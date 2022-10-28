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
end
