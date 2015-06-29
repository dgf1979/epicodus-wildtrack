class UpdateSightings < ActiveRecord::Migration
  def change
    add_column :sightings, :species_id, :string
  end
end
