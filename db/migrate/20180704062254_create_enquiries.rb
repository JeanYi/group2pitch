class CreateEnquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :enquiries do |t|
    	t.string :subject_one
    	t.string :subject_two
    	t.integer :budget
    	t.date :start_date
    	t.date :end_date
    	t.string :venue
    	t.references :listings

      t.timestamps
    end
  end
end
