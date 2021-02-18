class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name, null: false
      t.string :photo_url, null: true
      t.string :status, null: false

      t.timestamps
    end
  end
end
