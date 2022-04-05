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
  context '#get_merchant' do
    it "returns a merchants data" do
      merchants = MerchantService.get_merchant(3)
      expect(merchants).to be_a Hash
    end
  end
  context '#get_merchants_items' do
    it "returns merchant items" do
      merchants = MerchantFacade.get_merchants
      merchant = merchants.first
      merchants_items = MerchantService.get_merchants_items(merchant.api_id)
      expect(merchants_items).to be_a Hash
    end
  end
end
