class ShoppingList
  def initialize
    @item = {}
  end
  def item    
    yield self
    @item[@name] ||= 0
    @item[@name] += @quantity
  end
  def name(n)
    @name = n
  end
  def quantity(q)
    @quantity = q
  end
  def to_s
    @item.each_key do |key|
        puts "#{key.ljust(20, '.')}#{@item[key]}"
      end
  end
  
end