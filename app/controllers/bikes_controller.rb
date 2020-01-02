class BikesController < ApplicationController
  def create
    brand = Brand.new(brand_params)
    response_json = { status: '422 not found' }
    render json: response_json && return if brand.invalid_param?
    brand_id = brand.fetch_registered_brand_id
    bike = Bike.new(serial_number: params[:serial_number], brand_id: brand_id)
    render json: response_json && return if bike.invalid_param?
    response_json = { status: '202 success' } if bike.save
    render json: response_json
  end

  def update
    bike = Bike.find_by(serial_number: params[:serial_number])

    if bike.nil?
      render json: { result: 'naizo', status: '404 not found' }
    else
      bike.update(sold_at: Time.now.utc)
      render json: { result: 'aruzo', status: '202 success' }
    end
  end

  private

  def bike_params
    params.permit(:serial_number)
  end

  def brand_params
    params.permit(:name)
  end
end
