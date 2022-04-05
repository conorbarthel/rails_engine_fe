class MerchantFacade
  def self.get_merchants
    json = MerchantService.get_merchants
    json[:data].map do |merchant_data|
      MerchantCall.new(merchant_data)
    end
  end

  def self.get_merchant(id)
    json = MerchantService.get_merchant(id)
    MerchantCall.new(json[:data])
  end

  def self.get_merchants_items(id)
    json = MerchantService.get_merchants_items(id)
    json[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end
