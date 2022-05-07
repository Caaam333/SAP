class CreateLostPets < ActiveRecord::Migration[6.1]
  def change
    create_table :lost_pets do |t|
      t.string :birthday
      t.string :photo_url
      t.string :name
      t.text :description
      t.string :address
      t.references :breed, null: false, foreign_key: true
      t.references :species, null: false, foreign_key: true

      t.timestamps
    end
  end
end
