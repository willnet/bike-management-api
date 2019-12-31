class Bike < ApplicationRecord
  belongs_to :brand
  validates :serial_number, presence: true, uniqueness: { case_sensitive: true }

  def initialize(params = {})
    @serial_number = params&.fetch(:serial_number)
    super(params)
  end
  
  def is_invalid_param?
    @serial_number.blank?
  end

end
