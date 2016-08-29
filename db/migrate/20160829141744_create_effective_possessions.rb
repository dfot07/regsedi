class CreateEffectivePossessions < ActiveRecord::Migration[5.0]
  def change
    create_table :effective_possessions do |t|
      t.references :user, foreign_key: true
      t.references :act, foreign_key: true
      t.string :numero_acuerdo
      t.string :causante
      t.datetime :fecha_defuncion
      t.string :heredero
      t.string :conyuge_sobreviviente

      t.timestamps
    end
  end
end
