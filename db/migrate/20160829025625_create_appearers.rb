class CreateAppearers < ActiveRecord::Migration[5.0]
  def change
    create_table :appearers do |t|
      t.references :user, foreign_key: true
      t.references :act, foreign_key: true
      t.string :tipo_persona
      t.string :razon_social
      t.string :apellido
      t.string :nombre
      t.string :tipo_interviniente
      t.string :calidad_compareciente
      t.string :tipo_identificacion
      t.string :identificacion
      t.string :estado_civil
      t.string :apellido_conyuge
      t.string :identificacion_conyuge
      t.string :separacion_bien

      t.timestamps
    end
  end
end
