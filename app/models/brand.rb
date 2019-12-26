class Brand < ApplicationRecord
  has_many :bikes, class_name: "Bike"

  def initialize(params = {})
    @brand_name = params&.fetch(:name)
    super(params)
  end

  def fetch_brand_info(name)
    Brand.find_by(name: name)
  end

  def fetch_registered_brand_id
    Brand.new(name: @brand_name).save if Brand.find_by(name: @brand_name).nil?
    Brand.find_by(name: @brand_name).id
  end

  def is_valid_param?
    @brand_name.blank?
  end
  
end
