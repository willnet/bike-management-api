class BrandsController < ApplicationController
  def show
    # http://localhost:3000//brands/1
    # リクエストされたブランドに一致する自転車情報を返却する
    bike_info = Bike.find_by(id: params[:id])
    brand_info = Brand.find_by(name: bike_info.brand.name)

    # 2019年1月10日 13時2分加工していく

    array = []
    json = {id: brand_info.id, serial_number: bike_info.serial_number, sold_at: bike_info.sold_at}.to_json
    res = array.push(json)

    render json: res
  end
end
