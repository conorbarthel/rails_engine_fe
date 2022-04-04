require 'rails_helper'

RSpec.describe MerchantCall do
  it 'builds a merchant object when data is passed in' do
    data = {
      id: "6",
      name: "Conor's Crap"
    }
    @merchant = MerchantCall.new(data)

    expect(@merchant).to be_an_instance_of(MerchantCall)
    expect(@merchant.api_id).to eq("6")
  end
end
