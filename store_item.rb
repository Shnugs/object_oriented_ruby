# this is for the inventory of a local games store
magic_card_1 = {name: "Black Lotus", color: "Colorless", price: 25000, foil: false}
magic_card_2 = {name: "Mox Opal", color: "Colorless", price: 250, foil: true}
magic_card_3 = {:name => "Wildgrowth Walker", :color => "Green", :price => 2, :foil => true}

# cycling through hashes using JS hash notation
# this is preferred overall
magic_card_1.each do |key, value|
  puts "#{key}: #{value}"
end

# cycling through hashes using Ruby hash notation
# while it works, it's nowhere near as clean as JS notation
magic_card_3.each do |key, value|
  puts "#{key}: #{value}"
end

puts "======================="




class Product
    attr_reader :name, :price
    attr_writer :price

  def initialize(objects)
    @name = objects[:name]
    @price = objects[:price]
  end

  def show_info
    return "#{@name}: $#{@price}"
  end
end

class Card < Product
  attr_reader :color, :foil, :cmc

  def initialize(objects)
    super(objects)
    @color = objects[:color]
    @foil = objects[:foil]
    # cmc = Converted Mana Cost
    @cmc = objects[:cmc]
  end

end

class Snack < Product
  attr_reader :shelf_life, :price, :name
  
  def initialize(objects)
    super(objects)
    @shelf_life = objects[:shelf_life]
  end
end

magic_card_1 = Card.new(name: "Black Lotus", 
                        color: "Colorless", 
                        price: 25000, 
                        foil: false,
                        cmc: 0)

magic_card_2 = Card.new(name: "Mox Opal", 
                        color: "Colorless", 
                        price: 250, 
                        foil: true,
                        cmc: 0)

magic_card_3 = Card.new(name: "Wildgrowth Walker", 
                        color: "Green", 
                        price: 2, 
                        foil: true,
                        cmc: 2)

snack_1 = Snack.new(name: "Gatorade", 
                    price: 2.50, 
                    shelf_life: 500)

p magic_card_1.show_info
p magic_card_2.show_info
p magic_card_3.show_info
p snack_1.show_info
