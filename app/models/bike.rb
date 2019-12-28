class Bike < ApplicationRecord
  belongs_to :brand, foreign_key: "brand_id", class_name: "Brand"
  accepts_nested_attributes_for :brand

  def initialize(params = {})
    @serial_number = params&.fetch(:serial_number) if params[:serial_number].present?
    super(params)
  end
  
  def is_invalid_param?
    @serial_number.blank?
  end

end
