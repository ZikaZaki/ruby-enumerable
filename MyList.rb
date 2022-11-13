require_relative 'my_enumerable'
class MyList
  def initialize(*list)
    @list = list
  end

  include MyEnumerable
  def each
    @list.each { |value| yield value if block_given? }
  end
end