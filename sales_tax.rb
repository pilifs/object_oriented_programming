class Good
  attr_accessor :price

  @@tax = 1.15

  def initialize (price, type_of_good)
    @price = price
    @type_of_good = type_of_good
    @exempt = ["Book", "Food", "Medical"].include?(@type_of_good)
  end

  def calculate_price
    @exempt ? (@price) : (@price *= @@tax)
    puts "$#{sprintf('%.2f', @price)}"
  end

end

class ImportGood < Good
  def initialize
    super
  end

  def calculate_price
    super
  end
end

def testmethod
  good1 = Good.new(8, "Book")
  good2 = Good.new(8, "Perfume")
  good1.calculate_price
  good2.calculate_price
end

testmethod
