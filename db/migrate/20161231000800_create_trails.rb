class CreateTrails < ActiveRecord::Migration[5.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :description
      t.string :lat
      t.string :long
      t.string :rating

      t.timestamps
    end
  end
end
