class BikesController < ApplicationController
  def create
    brand = Brand.new(brand_params)
    response_json = { status: '422' }
    if brand.invalid_param?
      render json: response_json, status: :unprocessable_entity && return
    end
    brand_id = brand.fetch_registered_brand_id
    bike = Bike.new(serial_number: params[:serial_number], brand_id: brand_id)
    if bike.invalid_param?
      render json: response_json, status: :unprocessable_entity && return
    end
    response_json = { status: '201' } if bike.save
    render json: response_json, status: :created
  end

  def update
    bike = Bike.find_by(serial_number: params[:serial_number])

    if bike.nil?
      render json: { status: '404' }, status: :not_found
    else
      bike.update(sold_at: Time.now.utc)
      render json: { status: '200' }, status: :ok
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
