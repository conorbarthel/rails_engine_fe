require 'rails_helper'

RSpec.describe 'Merchants index page' do
  @merchants = MerchantFacade.get_merchants
  before(:each) do
    visit merchant_path(@merchants.last)
  end

  it "has a title with the merchant's name" do
    expect(page).to have_content(@merchants.last.name)
  end

  it "lists the merchants items" do
    merchant = @merchants.last
    merchants_items = MerchantFacade.get_merchants_items(merchant.api_id)
    merchants_items.each do |item|
      expect(page).to have_content(item.name)
    end
  end
end
