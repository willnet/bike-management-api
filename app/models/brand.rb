class Brand < ApplicationRecord
  has_many :bikes

  def initialize(params = {})
    @params = params
  end

  def fetch_brand_info
    Brand.find_by(id: @params[:id])
  end

end
