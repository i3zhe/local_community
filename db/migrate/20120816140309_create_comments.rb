class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :shop

      t.timestamps
    end
    add_index :comments, :shop_id
  end
end
