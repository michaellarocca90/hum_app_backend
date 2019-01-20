class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :item_name
      t.boolean :is_amazon
      t.string :amazon_url

      t.timestamps
    end
  end
end
