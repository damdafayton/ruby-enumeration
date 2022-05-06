require './MyEnumerable.rb'

dummyLi=[1,2,3]

class MyList 
  def initialize(list)
    @list=list
  end

  def each
    puts @list
  end

  include MyEnumerable
end

x = MyList.new(dummyLi)
x.each
x.all? {|e| e <= 4}
x.all? {|e| e <= 2}
x.any? {|e| e == 2}
x.any? {|e| e == 5}
x.filter {|e| e.even?}