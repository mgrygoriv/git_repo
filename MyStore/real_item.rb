class RealItem < Item

  attr_reader :weight

  def initialize(options = {})
    puts "Initialize RealItem ..."
    #super
    @weight = options[:weight]
    super
  end

  def info
    puts "Info-RealItem:start"
    yield weight
    puts "Info-RealItem: end"
  end

  def test
    puts "Testing RealItem..."
    #puts self.instance_variables
    x = [name, price, weight]
    p x
  end



end