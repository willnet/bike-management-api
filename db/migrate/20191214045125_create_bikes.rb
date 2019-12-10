class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :serial_number
      t.datetime :sold_at

      t.timestamps
    end
  end
end
