RSpec.describe Bike, type: :model do
  context 'パラメータの不足でエラーが返ってくること' do
    
    it '作成されたバイクは有効である' do
      bike = FactoryBot.build(:general_bike)
      expect(bike.valid?).to be(true)
    end
    
  end
  
end
