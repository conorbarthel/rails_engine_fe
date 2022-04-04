class MerchantFacade
  def self.get_merchants
    json = MerchantService.get_merchants
    json[:data].map do |merchant_data|
      MerchantCall.new(merchant_data)
    end
  end
end
