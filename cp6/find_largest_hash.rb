class MyHash
  def initialize
    @hash = Hash.new
  end

  def largest
    return @hash[:largest]
  end

  def insert(collection)
    collection.each do |item|
      if item.to_i > @hash[:largest].to_i
        @hash[:largest] = item
      end

      @hash[item] = item
    end
  end
end
