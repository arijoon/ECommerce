class BasketsController < ApplicationController
  before_action :set_basket, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user
  before_action :correct_user, only: [:edit,:destroy, :update]

  # GET /baskets
  # GET /baskets.json
  def index
    @baskets = Basket.where(user_id: current_user.id)
  end

  # POST /baskets
  # POST /baskets.json
  def create
    @basket = Basket.new(user_id: current_user.id, product_id: params[:product_id])
    @basket.save

    redirect_to root_url
  end


  # DELETE /baskets/1
  # DELETE /baskets/1.json
  def destroy
    @basket.destroy

    redirect_to baskets_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basket
      @basket = Basket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basket_params
      params.require(:basket).permit(:user_id, :product_id)
    end

    def correct_user
      redirect_to(@basket) unless current_user?(@basket.user)
    end
end
