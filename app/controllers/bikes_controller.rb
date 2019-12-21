class BikesController < ApplicationController

  def create
    if params[:name].blank? || params[:serial_number].blank?
      json = {status: '404 not found'}
      render json: json and return
    end

    if Brand.find_by(name: params[:name]).nil?
      Brand.new(name: params[:name]).save
    end
    brand_id = Brand.find_by(name: params[:name]).id
    # シリアルナンバーはユニーク制約をつける
    Bike.new(serial_number: params[:serial_number], brand_id: brand_id).save

    json = {message: 'new_serial_saved!', status: '202 success'}
    render json: json
  end

  def update #自転車売却API
# serial_number（車体番号）:string null: false
# 仕様
# リクエストのserial_numberに該当する自転車の売却日（sold_at）に、現在日時を入れてください。
# レスポンス
# 成功時 ステータスコード200を返す
# 失敗時(serial_numberに該当する自転車が見つからない) ステータスコード404を返す
# 失敗時(DB更新時エラー) ステータスコード422を返す
# その他にお願いしたいこと
# bullet を設定してください。（詳しくは、 bulletについて.md を見てください）
# RSpecを書いてください
# rubocopを入れてください
# CIの設定（pushすると自動でrubocopとRSpecが走る）をお願いします
# コミットやプルリクエストの粒度はお任せします
# 開発手順
  end
end