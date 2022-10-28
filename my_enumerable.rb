module MyEnumerable
  def all?
    (0...@list.length).each do |i|
      response = yield(@list[i])
      return false if response == false
    end
    true
  end

  def any?
    (0...@list.length).each do |i|
      result = yield(@list[i])
      return true if result == true
    end
    false
  end

  def filter
    result = []
    (0...@list.length).each do |i|
      response = yield(@list[i])
      result.push(@list[i]) if response == true
    end

    result
  end
end
