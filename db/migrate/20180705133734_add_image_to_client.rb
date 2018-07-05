class AddImageToClient < ActiveRecord::Migration[5.2]
  	def self.up
  	change_table :clients do |t|
  		t.attachment :image
  		end
  	end
end
