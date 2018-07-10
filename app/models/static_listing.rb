class StaticListing < ApplicationRecord
	has_attached_file :image
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


  	def self.search(params)
		staticlistings = StaticListing.where("venue LIKE ? or description LIKE?", "%#{params[:search]}%","%#{params[:search]}%")
			if params[:search].present?
		staticlistings #shows all the articles related to search		
		end
	end
end
