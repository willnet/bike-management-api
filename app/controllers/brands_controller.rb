class BrandsController < ApplicationController
  def show
    brand = Brand.new(brand_params).fetch_brand_info(params[:name])
    bikes = brand.bikes
    response = bikes.map do |bike|
      {
        id: bike[:id],
        serial_number: bike[:serial_number],
        sold_at: bike[:sold_at]&.strftime("%Y年%m月%d日 %H時%M分")
      }
    end
    render json: response
  end

  private

  def brand_params
    params.permit(:name)
  end
end
