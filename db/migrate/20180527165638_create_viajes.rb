class CreateViajes < ActiveRecord::Migration[5.0]
  def change
    create_table :viajes do |t|
      t.references :user, foreign_key: true
      t.references :place, foreign_key: true
      t.string :description
      t.time :time_limit

      t.timestamps
    end
  end
end
