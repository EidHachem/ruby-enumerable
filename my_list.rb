require_relative 'my_enumerable'
# My list class that creates a list
class MyList
  def initialize(*args)
    @list = args
  end

  include MyEnumerable

  def each
    @list.each { |el| yield(el) if block_given? }
  end
end
