require 'rails_helper'

RSpec.describe 'Merchants index page' do
  before(:each) do
    visit merchants_path
  end

  it "has a title" do
    expect(page).to have_content('Merchants')
  end

  it "has links to all merchants" do
    @merchants = MerchantFacade.get_merchants
    @merchants.each do |merchant|
      expect(page).to have_content(merchant.name)
    end
    click_on "#{@merchants.first.name}"
    expect(current_path).to eq(merchant_path(@merchants.first.api_id))
  end
end
