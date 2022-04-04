require 'rails_helper'

RSpec.describe 'Merchants index page' do
  before(:each) do
    visit merchants_path
  end

  it "has a title" do
    expect(page).to have_content('Merchants')
  end

  it "has links to all merchants" do
    
  end
end
