class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :repertorio
      t.date :frepertorio
      t.string :inscripcion
      t.date :finscripcion
      t.string :apellidos
      t.string :nombres
      t.string :identificacion

      t.timestamps
    end
  end
end
