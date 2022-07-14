require_relative 'myenumerable.rb'

class MyList
  def initialize(*args)
    @list = args
  end

  include MyEnumerable

  def each
    @list.each { |el| yield(el) if block_given? }
  end
end

# Create list
list = MyList.new(1, 2, 3, 4)

# Test all?
puts list.all? { |e| e < 5 }
puts list.all? { |e| e > 5 }

# Test any?
puts list.any? { |e| e == 2 }
puts list.any? { |e| e == 5 }

# Test filter
print list.filter { |e| e.even? }
