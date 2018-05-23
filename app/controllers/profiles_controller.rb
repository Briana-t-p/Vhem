class ProfilesController < ApplicationController
  def realtor_profile
      @realtor = Realtor.find(params[:id])
      @rentals = @realtor.rentals
  end
end
