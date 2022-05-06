require_relative './my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*_args)
    @list = list
  end

  def each
    @list.each(&block)
  end
end

# y = MyEnumerable.any?
x = MyList.new(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
x.each
x.all? { |e| e <= 4 }
x.all? { |e| e <= 2 }
x.any? { |e| e == 2 }
x.any? { |e| e == 5 }
x.filter(&:even?)
