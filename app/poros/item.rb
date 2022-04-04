class Item
  attr_reader :api_id, :name

  def initialize(data)
    @api_id = data[:id]
    @name = data[:attributes][:name]
    @name = data[:attributes][:description]
    @name = data[:attributes][:unit_price]
    @name = data[:attributes][:merchant_id]
  end
end
