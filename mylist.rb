class MyList
  def initialize(*args)
    @list = args
  end

  def each
    @list.each { |el| yield(el) if block_given? }
  end
end
