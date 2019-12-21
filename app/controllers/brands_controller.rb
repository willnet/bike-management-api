class BrandsController < ApplicationController
  def show # リクエストされたバイクのブランドに一致する自転車情報を返却する
    brand =Brand.new(params).fetch_brand_info
    bikes = Bike.new(params).fetch_bike_info
    response = bikes.map do |bike|
      {
        id: brand[:id],
        serial_number: bike[:serial_number],
        sold_at: bike[:sold_at]&.strftime("%Y年%m月%d日 %H時%M分") 
      }
    end

    render json: response
  end
end
