equire 'rails_helper'

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
end
