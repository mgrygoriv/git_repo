class VirtualItem < Item

  def self.discount

    @@discount = 0.4
    if Time.now.month == 9
      return @@discount + 0.1
    else
      return @@discount
    end

  end

  def test
    puts "Testing VirtualItem..."
    #puts self.instance_variables
    x = [name, price]
    p x
  end

end