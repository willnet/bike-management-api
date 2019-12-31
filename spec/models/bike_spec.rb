RSpec.describe Bike, type: :model do
  
  context '成功時' do
    it '作成されたバイクは有効である' do
      bike = FactoryBot.build(:general_bike)
      expect(bike.valid?).to be(true)
    end
  end
  
  context '失敗時' do
    it 'ブランド名がnilである' do
      bike = FactoryBot.build(:nil_brand_id)
      expect(bike.valid?).to be(false)
    end

    it 'シリアルナンバーが重複している' do
      FactoryBot.create(:bike_made_by_giant)
      expect { FactoryBot.create(:bike_made_by_giant) }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
  
end
