class LeasesController < ApplicationController
  def index
  @leases = Lease.all
end

def new
  @lease = Lease.new
end

def create
  @lease = current_user.leases.new(lease_params)
  if @lease.save
    redirect_to rentals_path
  else
    puts @lease.errors.full_messages
    redirect_to "new"
  end

end

def edit
  @lease = Lease.find(params[:id])
end
def update
  @lease = Lease.find(params[:id])
  if @lease.update(lease_params)
    redirect_to @lease
  else
    render 'edit'
  end
end

def show
  @lease = Lease.find(params[:id])
end

def destroy
 @lease = Lease.find(params[:id])
 @lease.destroy
 redirect_to rentals_index_path
end

private

def lease_params
  params.require(:lease).permit(:user_id, :rental_id, :avatar)
end
end
