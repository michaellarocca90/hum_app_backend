class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :gender
      t.string :language
      t.boolean :opted_in
      t.string :bio
      t.string :type
      t.integer :age
      t.integer :zip_code
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
