require "./card.rb"
require "./snack.rb"

magic_card_1 = StoreFront::Card.new(name: "Black Lotus", 
                        color: "Colorless", 
                        price: 25000, 
                        foil: false,
                        cmc: 0)

magic_card_2 = StoreFront::Card.new(name: "Mox Opal", 
                        color: "Colorless", 
                        price: 250, 
                        foil: true,
                        cmc: 0)

magic_card_3 = StoreFront::Card.new(name: "Wildgrowth Walker", 
                        color: "Green", 
                        price: 2, 
                        foil: true,
                        cmc: 2)

snack_1 = StoreFront::Snack.new(name: "Gatorade", 
                    price: 2.50, 
                    shelf_life: 500)

p magic_card_1.show_info
p magic_card_2.show_info
p magic_card_3.show_info
p snack_1.show_info
