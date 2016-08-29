class CreateHorizontalProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :horizontal_properties do |t|
      t.references :user, foreign_key: true
      t.references :act, foreign_key: true
      t.string :propiedad
      t.string :alicuota
      t.string :expensas
      t.string :comparece_menor
      t.string :nombres_tutor
      t.datetime :fecha_adjudicacion
      t.datetime :fecha_acta_notarial

      t.timestamps
    end
  end
end
