class Order

  attr_reader :items

  def initialize
    puts "Initialize Order ..."
    @items = Array.new
  end

  include ItemContainer

end