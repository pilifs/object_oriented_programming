class Good
  attr_accessor :price

  def initialize (price, type_of_good)
    @price = price
    @TAX = 1.15
    @type_of_good = type_of_good
    @exempt = ["Book", "Food", "Medical"].include?(@type_of_good)
  end

  def calculate_price
    @exempt ? (@price) : (@price *= @TAX)
    puts "$#{sprintf('%.2f', @price)}"
  end

end

class ImportGood < Good

end

def testmethod
  good1 = Good.new(8, "Book")
  good2 = Good.new(8, "Perfume")
  good1.calculate_price
  good2.calculate_price
end

testmethod
