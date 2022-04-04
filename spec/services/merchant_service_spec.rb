require 'rails_helper'

RSpec.describe MerchantService do
  context '#connect' do
    it "returns json response" do
      response = MerchantService.connect
      expect(response).to be_a Faraday::Connection
    end
  end
  context '#get_merchant' do
    it "returns merchant data" do
      merchant = MerchantService.get_merchant('1')
      expect(merchant).to be_a MerchantCall
    end
  end
end
