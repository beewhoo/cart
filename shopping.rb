require_relative 'product'

class Shopping
  @@cart = []
  @@tax = 1.13

  def self.all
    @@cart
  end



  def self.add_cart(item)

    @@cart << item
    return item
  end

  def self.total_with_tax
    total = 0
    @@cart.each do |item|
      total += (item.baseprice * @@tax)
    end
    total
  end


  def self.total_without_tax
    total = 0
    @@cart.each do |item|
      total += item.baseprice
    end
    total
  end



  def self.remove(product)
      @@cart.delete(product)
    end




end


apple = Product.new('apple', 2.99)
cereal = Product.new('cereal', 6.99)


 Shopping.add_cart(apple)
 Shopping.add_cart(cereal)
 


p '-----------------------------------------------------------------------'
p Shopping.remove(cereal)
p '-----------------------------------------------------------------------'
p '-----------------------------------------------------------------------'
p Shopping.total_without_tax
p '-----------------------------------------------------------------------'
p Shopping.total_with_tax
p '-----------------------------------------------------------------------'
p Shopping.all
