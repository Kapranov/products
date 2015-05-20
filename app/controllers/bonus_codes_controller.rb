class BonusCodesController < ApplicationController

  def index
    @bonus_codes = BonusCode.find(params[:product_id])
    # render json: @bonus_codes, :only => [:product_id, :bonus_code], :nothing => true, :content_type => 'text/html'
    # render json: @bonus_codes, :only => [:product_id, :bonus_code]
    # render plain: "OK"
    # render json: { error_message: "Not found", status: 404 } and return unless @bonus_codes
    # render json: @bonus_codes, status: 201, location: @post
    # render json: @bonus_codes, status: 200, location: @bonus_codes
    # render json: @bonus_codes.errors, status: 422
    render json: @bonus_codes, :only => [:product_id, :bonus_code], status: 200
  end


  private
  def bonus_code_params
    params.require(:bonus_code).permit(
      :product_id,
      :bonus_code,
      products_attributes: [ :id, :bonus_codes, :_destroy ]
    )
  end
end
