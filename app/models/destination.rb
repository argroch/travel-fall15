class Destination < ActiveRecord::Base
	# Geocoder gem stuff:
	geocoded_by :city_country
  after_validation :geocode
	
	# Paperclip gem stuff:
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  

  def city_country
  	"#{city}, #{country}"
  end

end
