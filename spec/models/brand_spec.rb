RSpec.describe Brand, type: :model do
  context '成功時' do
    it '作成されたブランドは有効である' do
      brand = FactoryBot.build(:giant)
      expect(brand.valid?).to be(true)
    end
  end

  context '失敗時' do
    it '名前がnilである' do
      brand = FactoryBot.build(:nil_brand)
      expect(brand.valid?).to be(false)
    end
    
    it 'ブランド名が重複してしまう' do
      # FactoryBot.create(:giant)
      # duplicate_brand = FactoryBot.build(:giant)
      # expect(duplicate_brand.valid?).to be(false)
      # todo: データベースクリーナーの導入
    end
  end
end
