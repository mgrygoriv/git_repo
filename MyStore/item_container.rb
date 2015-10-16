module ItemContainer

  def add_item(item)
    @items.push item
  end

  def remove_item
    @items.pop
  end

  def validate
    @items.each {|item| puts item.name.to_s + " it has no price" if item.price.nil? }
  end

  def delete_invalid_items
    @items.delete_if { |item| item.price.nil? }
  end

end

