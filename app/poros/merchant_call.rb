class MerchantCall
  attr_reader :api_id, :name

  def initialize(data)
    @api_id = data[:id]
    @name = data[:name]
  end
end
