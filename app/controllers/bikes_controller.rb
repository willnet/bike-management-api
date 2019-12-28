class BikesController < ApplicationController

  def create
    brand = Brand.new(brand_params)
    if brand.is_invalid_param?
      json = { status: '404 not found' }
      render json: json and return
    end
    
    brand_id = brand.fetch_registered_brand_id
    bike = Bike.new(serial_number: params[:serial_number], brand_id: brand_id)
    if bike.is_invalid_param?
      json = { status: '404 not found' }
      render json: json and return
    end
    
    json = bike.save ?
               {message: 'new_serial_saved!', status: '202 success'} :
               {message: 'not_save', status: '202 success'}
    render json: json
  end

  def update
    bike = Bike.find_by(serial_number: params[:serial_number])
    
    if bike.nil?
      render json: {"presrnt": "naizo", status: '404 not found'}
    else
      bike.update(sold_at: Time.now)
      render json: {"present": "aruzo", status: '202 success'}
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
