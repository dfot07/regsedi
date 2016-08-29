class CreateAssessments < ActiveRecord::Migration[5.0]
  def change
    create_table :assessments do |t|
      t.references :user, foreign_key: true
      t.references :act, foreign_key: true
      t.string :posee_gravamen
      t.string :tipo_gravamen
      t.string :genera_gravamen
      t.string :tipo_genera_gravamen
      t.datetime :fecha_constitucion
      t.datetime :fecha_cancelacion

      t.timestamps
    end
  end
end
