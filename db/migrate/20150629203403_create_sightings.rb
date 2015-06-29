class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :date, :string
      t.column :latitude, :string
      t.column :longitude, :string

      t.timestamps
    end
  end
end
