require_relative './my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*args)
    @list = args
  end
end

# y = MyEnumerable.any?
list = MyList.new(1, 2, 3, 4)
# x.each
p(list.all? { |e| e <= 4 })
p(list.all? { |e| e <= 2 })
p(list.any? { |e| e == 2 })
p(list.any? { |e| e == 5 })
p list.filter(&:even?)
p list.filter(&:odd?)
