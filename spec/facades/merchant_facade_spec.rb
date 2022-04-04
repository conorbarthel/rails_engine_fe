require 'rails_helper'

RSpec.describe MerchantFacade do
  describe '#get_merchants' do
    it 'gets all merchants' do
      VCR.use_cassette('merchants_api') do
        merchants = MerchantFacade.get_merchants
        merchants.each do |merchant|
          expect(merchant).to be_an_instance_of(MerchantCall)
        end
      end
    end
  end
  describe '#get_merchant' do
    it 'gets a merchant' do
      VCR.use_cassette('merchant_api') do
        merchant = MerchantFacade.get_merchant(3)
        expect(merchant).to be_an_instance_of(MerchantCall)
      end
    end
  end
  describe '#get_merchants_items' do
    it 'gets all merchants items' do
      VCR.use_cassette('merchants_items_api') do
        items = MerchantFacade.get_merchants_items(2)
        items.each do |item|
          expect(item).to be_an_instance_of(Item)
        end
      end
    end
  end
end
