class Cart

  attr_reader :items

  def initialize
    puts "Initialize Cart ..."
    @items = Array.new
  end

  include ItemContainer
end

