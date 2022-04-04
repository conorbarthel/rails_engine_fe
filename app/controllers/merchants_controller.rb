class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.get_merchants
  end

  def show
    @merchant = MerchantFacade.get_merchants.find(params[:id])
  end
end
