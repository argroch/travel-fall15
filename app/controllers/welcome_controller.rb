class WelcomeController < ApplicationController
  def index
  	@homeland = "California"
  	@countries = ["Croatia","Mozambique","Kyrgyzstan"]
  	@country_images = ["croatia1.png","kitties.jpg","kyrgyzstan.jpg","mozambique.jpg"]
  	@country_image_hash = {"Croatia" => "croatia1.png", "Kittens" => "kitties.jpg"}
  	@color = "tomato"
  end

  def about
  	@color = params[:color]
  	@size = params[:size].to_i
  end

  def contact

  end

end
