require "./product.rb"
module StoreFront
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
end
