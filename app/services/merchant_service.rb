class MerchantService
  def self.connect
    Faraday.new(url: 'http://localhost:3000/')
  end

  def self.get_merchants
    response = connect.get("/api/v1/merchants")
    attrs = JSON.parse(response.body, symbolize_names: true)
  end
end
