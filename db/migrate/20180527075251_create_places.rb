class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.numeric :lat
      t.numeric :long

      t.timestamps
    end
  end
end
