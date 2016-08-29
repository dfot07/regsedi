class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.references :user, foreign_key: true
      t.references :act, foreign_key: true
      t.string :numero_predio
      t.string :clave_catastral
      t.string :descripcion
      t.string :provincia
      t.string :zona
      t.string :superficie
      t.string :ubicacion
      t.text :lindero
      t.string :parroquia
      t.string :canton

      t.timestamps
    end
  end
end
