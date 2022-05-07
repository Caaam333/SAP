class CreateAdoptions < ActiveRecord::Migration[6.1]
  def change
    create_table :adoptions do |t|
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :lost_pet, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
