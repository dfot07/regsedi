class CreateMarginalizations < ActiveRecord::Migration[5.0]
  def change
    create_table :marginalizations do |t|
      t.references :user, foreign_key: true
      t.references :act, foreign_key: true
      t.string :marginacion
      t.datetime :ultima_modificacion
      t.string :canton_registro

      t.timestamps
    end
  end
end
