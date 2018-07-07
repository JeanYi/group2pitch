class AddImageandtitleToStaticListings < ActiveRecord::Migration[5.2]
  
  	def self.up
  	change_table :static_listings do |t|
  		t.attachment :image
  		t.string :title
  		end

  	end


end
