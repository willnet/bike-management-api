class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :serial_number, unique: true, null: false
      t.datetime :sold_at
      t.integer  :brand_id, null: false
      t.timestamps
    end
  end
end
