class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
    	t.string :name
    	t.string :short_desc
    	t.string :long_desc
    	t.date :start_date
    	t.date :end_date
    	t.string :venue
    end
  end
end
