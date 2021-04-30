class PublicProfilesController < ApplicationController
  def index
    @public_profiles = PublicProfile.all
  end

  def show
    @public_profile = PublicProfile.find(params[:id])
  end

  def new
    @public_profile = PublicProfile.new
  end

  def create
    @public_profile = PublicProfile.new(public_profile_params)
    if @public_profile.save
      redirect_to
    else
      render :new
    end
  end

  def public_profile_params
    params.require(:public_profile).permit(:name, :descripiton, :price)
  end
end
