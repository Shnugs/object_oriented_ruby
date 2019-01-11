module StoreFront
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
end
