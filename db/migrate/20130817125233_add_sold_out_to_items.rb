class AddSoldOutToItems < ActiveRecord::Migration
  def change
  	add_column :items, :sold_count, :integer, :default => 0
  end
end
