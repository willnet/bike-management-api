class BikesController < ApplicationController

  def create
    brand = Brand.new(brand_params)
    if brand.is_valid_param?
      json = { status: '404 not found' }
      render json: json and return
    end
    
    brand_id = brand.fetch_registered_brand_id
    bike = Bike.new(serial_number: params[:serial_number], brand_id: brand_id)
    if bike.is_valid_param?
      json = { status: '404 not found' }
      render json: json and return
    end
    
    json = bike.save ?
               {message: 'new_serial_saved!', status: '202 success'} :
               {message: 'not_save', status: '202 success'}
    render json: json
  end

  def update #自転車売却API
    # シリアルナンバーを検索する
    #
  # serial_number（車体番号）:string null: false
  # 仕様
  # リクエストのserial_numberに該当する自転車の売却日（sold_at）に、現在日時を入れてください。
  # レスポンス
  # 成功時 ステータスコード200を返す
  # 失敗時(serial_numberに該当する自転車が見つからない) ステータスコード404を返す
  # 失敗時(DB更新時エラー) ステータスコード422を返す
  end

  private
    def bike_params
      params.permit(:serial_number)
    end

    def brand_params
      params.permit(:name)
    end
end
