RSpec.describe Brand, type: :model do
  context '成功時' do
    it '作成されたブランドは有効である' do
      brand = FactoryBot.build(:something_brand_name)
      expect(brand.valid?).to be(true)
    end
  end

  context '失敗時' do
    it '名前がnilである' do
      brand = FactoryBot.build(:nil_brand_name)
      expect(brand.valid?).to be(false)
    end

    it 'ブランド名が重複してしまう' do
      # FactoryBot.create(:something_brand_name)
      # duplicate_brand = FactoryBot.build(:something_brand_name)
      # expect(duplicate_brand.valid?).to be(false)
    end
  end
end
