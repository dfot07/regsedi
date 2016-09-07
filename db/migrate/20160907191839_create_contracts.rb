class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.references :user, foreign_key: true
      t.string :descripcion

      t.timestamps
    end
  end
end
