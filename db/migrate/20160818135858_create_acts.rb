class CreateActs < ActiveRecord::Migration[5.0]
  def change
    create_table :acts do |t|
      t.references :user, foreign_key: true
      t.string :descripcion
      t.string :especificacion
      t.string :tipo
      t.string :libro
      t.string :repertorio
      t.datetime :fecha_repertorio
      t.string :inscripcion
      t.datetime :fecha_inscripcion
      t.string :cuantia
      t.string :unidad

      t.timestamps
    end
  end
end
