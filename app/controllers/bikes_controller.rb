class BikesController < ApplicationController
  def create
    p 'ddddddddddddddddd'
    render json: {"name": "John", "age": 45}

    # すべてのデータベースからリクエストされたbrand_nameを検索する
    # ↓
    # なければ新しくbrandを生成する
    
#     1. 自転車登録API
# リクエスト
# brand_name（ブランド名）:string null: false
# serial_number（車体番号）:string null: false
# 仕様
# リクエストのbrand_nameがbrandsテーブルのnameに存在する場合は、そのbrandのidをbrand_idとして、bikesテーブルに自転車情報を登録してください
# リクエストのbrand_nameがbrandsテーブルのnameに存在しない場合は、新たなbrandとしてbrandsテーブルに登録し、bikesテーブルにも自転車情報を登録してください
# レスポンス
# 成功時 ステータスコード201を返す
# 失敗時(バリデーションエラー) ステータスコード422を返す
  end

  def update
#     3. 自転車売却API
# リクエスト
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
