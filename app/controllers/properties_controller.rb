class PropertiesController < ApplicationController

  def create
    @property = current_user.microposts.build(property_params)
    if @property.save
      flash[:success] = "Property created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end


  private

  def property_params
    params.require(:property).permit(:address)
  end
end
