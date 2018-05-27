class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :password
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :foto
      t.string :telefono

      t.timestamps
    end
  end
end
