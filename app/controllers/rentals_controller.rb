class RentalsController < ApplicationController
  def index
  @rentals = Rental.all
end

def new
  @rental = Rental.new
end

def create
  @rental = current_realtor.rentals.new(rental_params)
  if @rental.save
    redirect_to rentals_path
  else
    puts @rental.errors.full_messages
    redirect_to "new"
  end

end

def edit
  @rental = Rental.find(params[:id])
end
def update
  @rental = Rental.find(params[:id])
  if @rental.update(rental_params)
    redirect_to @rental
  else
    render 'edit'
  end
end

def show
  @rental = Rental.find(params[:id])
  @lease = Lease.new
end

def destroy
 @rental = Rental.find(params[:id])
 @rental.destroy
 redirect_to rentals_index_path
end

private

def rental_params
  params.require(:rental).permit(:address, :size, :rooms, :price, :pointGoal, :propertyType, :yearBuilt, :avatar)
end
end
