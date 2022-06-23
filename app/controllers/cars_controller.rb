class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.create(params_car)
    if Car.valid?
      #redirect_to dashboard_path
      puts "Good"
    else
      flash[:error] = Car.errors.full_messages
      #redirect_to dashboard_path
      puts "No good"
    end
  end

  def update
  end

  def destroy
  end

  private
  def params_car
    params.require(:car).permit(:model, :model_date, :km_price, :day_price)
  end
end
