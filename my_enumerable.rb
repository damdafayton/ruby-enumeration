module MyEnumerable
  def all?
    response = true
    @list.each do |n|
      return false unless yield(n)
    end
    response
  end

  def any?
    @list.each do |n|
      return true if yield(n)
    end
    false
  end

  def filter
    even_numbers = []
    @list.each do |n|
      even_numbers.push(n) if yield(n)
    end
    even_numbers
  end
end
