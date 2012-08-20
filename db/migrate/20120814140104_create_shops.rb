class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :slogan
      t.text :address
      t.text :description
      t.string :logo
      t.integer :weight

      t.timestamps
    end
  end
end
