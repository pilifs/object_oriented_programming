class Good
  attr_accessor :price

  @@tax = 1.15

  def initialize (price, type_of_good)
    @price = price
    @type_of_good = type_of_good
    @exempt = ["Book", "Food", "Medical"].include?(@type_of_good)
  end

  def calculate_price
    return @exempt ? (@price) : (@price *= @@tax)
  end

end

class ImportGood < Good

  def initialize(price, type_of_good)
    super(price, type_of_good)
  end

  def calculate_price
    return super + (@price * 0.05)
  end
end

def testmethod
  good1 = Good.new(8, "Book")
  good2 = Good.new(8, "Perfume")
  good3 = ImportGood.new(8, "Book")
  good4 = ImportGood.new(8, "Perfume")
  puts good1.calculate_price
  puts good2.calculate_price
  puts good3.calculate_price
  puts good4.calculate_price
end

testmethod
