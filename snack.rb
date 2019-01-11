require "./product.rb"
module StoreFront
  class Snack < Product
    attr_reader :shelf_life, :price, :name

    def initialize(objects)
      super(objects)
      @shelf_life = objects[:shelf_life]
    end
  end
end
