class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :shop

      t.timestamps
    end
    add_index :tags, :shop_id
  end
end
