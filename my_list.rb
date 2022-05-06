require_relative './my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block)
  end
end

# y = MyEnumerable.any?
list = MyList.new(1, 2, 3, 4)
# x.each
list.all? { |e| e <= 4 }
list.all? { |e| e <= 2 }
list.any? { |e| e == 2 }
list.any? { |e| e == 5 }
list.filter(&:even?)
list.filter(&:odd?)

print list.filter(&:odd?)
print list.filter(&:even?)