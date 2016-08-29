class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.references :user, foreign_key: true
      t.references :act, foreign_key: true
      t.string :notaria
      t.string :canton
      t.datetime :fecha_escritura

      t.timestamps
    end
  end
end
