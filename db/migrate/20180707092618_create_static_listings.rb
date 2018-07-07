class CreateStaticListings < ActiveRecord::Migration[5.2]
  def change
    create_table :static_listings do |t|

    	t.string :venue
    	t.string :description
    	t.string :budget
    	t.string :pax
    	t.string :duration
    	t.string :requirement
    	t.string :audience
    	


      t.timestamps
    end
  end
end
