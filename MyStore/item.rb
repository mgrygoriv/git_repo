class Item

  def self.discount

    @@discount = 0.1
    if Time.now.month == 9
      return @@discount + 0.2
    else
      return @@discount
    end

  end

  attr_accessor :name
  attr_reader :price
  attr_writer :price

  def initialize(options = {})
    puts "Initialize Item ..."
    @name = options[:name]
    @price = options[:price]
  end

  def info
    puts "Info:start"
    yield name
    yield price
    puts "Info: end"
  end


  def test
    puts "Testing Item..."
    #puts self.instance_variables
    x = [name, price]
    p x
  end

  def price
    print "self.class.discount="
    puts self.class.discount

    @price - @price*self.class.discount
  end

  private

  def tax

    type_tax = if self.class == VirtualItem
                 10
               else
                 20
               end

    cost_tax = if @price > 100
                 20
               else
                 10
               end

    cost_tax + type_tax

  end

end

