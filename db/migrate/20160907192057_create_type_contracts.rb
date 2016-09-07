class CreateTypeContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :type_contracts do |t|
      t.references :user, foreign_key: true
      t.references :contract, foreign_key: true
      t.string :descripcion

      t.timestamps
    end
  end
end
