class CreateAppearerSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :appearer_searches do |t|
      t.string :apellidos
      t.string :nombres
      t.string :identificacion

      t.timestamps
    end
  end
end
