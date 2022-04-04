require 'rails_helper'

RSpec.describe Item do
  it 'builds a item object when data is passed in' do
    data = {
      id: "6",
      attributes: {
        name: "crud",
        description: "stuff",
        unit_price: 1000000000000000,
        merchant_id: 1
      }
    }
    @item = Item.new(data)

    expect(@item).to be_an_instance_of(Item)
    expect(@item.api_id).to eq("6")
  end
end
