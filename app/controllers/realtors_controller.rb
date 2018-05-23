class RealtorsController < ApplicationController
  def index
  @realtors = Realtors.all
end

def new
  @realtors = Realtors.new
end


def edit
  @realtor = Realtor.find(params[:id])
end
def update
  @realtor = Realtor.find(params[:id])
  if @realtor.update(realtor_params)
    redirect_to profiles_realtor_profile
  else
    render 'edit'
  end
end

def show
  @realtor = Realtor.find(params[:id])
  @rentals = @realtor.rentals
end

def destroy
 @realtor = Realtor.find(params[:id])
 @realtor.destroy
 redirect_to homes_index_path
end

end
