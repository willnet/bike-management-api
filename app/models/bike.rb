class Bike < ApplicationRecord
  belongs_to :brand

  def initialize(params = {})
    @params = params
  end

  def fetch_bike_info
    Brand.find_by(id: @params[:id]).bikes
  end

end
