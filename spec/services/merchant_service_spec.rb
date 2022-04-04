require 'rails_helper'

RSpec.describe MerchantService do
  context '#connect' do
    it "returns json response" do
      response = MerchantService.connect
      expect(response).to be_a Faraday::Connection
    end
  end
  context '#get_merchants' do
    it "returns merchant data" do
      merchants = MerchantService.get_merchants
      expect(merchants).to be_a Hash
    end
  end
end
