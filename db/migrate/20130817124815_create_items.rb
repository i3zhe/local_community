class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.float :average_rating
      t.integer :qty
      t.text :followers

      t.timestamps
    end
  end
end
