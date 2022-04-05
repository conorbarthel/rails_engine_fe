class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.get_merchants
  end

  def show
    
    @merchant = MerchantFacade.get_merchant(params[:id])
    @items = MerchantFacade.get_merchants_items(@merchant.api_id)
  end
end
