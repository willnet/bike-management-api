class BrandsController < ApplicationController
  def show
    # http://localhost:3000//brands/1
    # リクエストされたバイクのブランドに一致する自転車情報を返却する
    brand = Brand.new(params)
    brand_info =brand.fetch_brand_info
    bike = Bike.new(params)
    bike_info = bike.fetch_bike_info
    # 2019年1月10日 13時2分加工していく
    array = []
    bike_info.each do |bike|
      json = {
        id: brand_info[:id],
        serial_number: bike[:serial_number],
        sold_at: bike[:sold_at]
      }.to_json
      @res = array.push(json)
    end

    render json: @res
  end
end
