class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.references :user, foreign_key: true
      t.string :model
      t.string :color
      t.string :foto

      t.timestamps
    end
  end
end
