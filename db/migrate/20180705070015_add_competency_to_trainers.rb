class AddCompetencyToTrainers < ActiveRecord::Migration[5.2]
  def change
  	add_column :trainers, :competency, :integer, default:0
  end
end
