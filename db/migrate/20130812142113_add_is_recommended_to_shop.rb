class AddIsRecommendedToShop < ActiveRecord::Migration
  def up
  	add_column :shops, :is_recommended, :boolean, default: 0
  end

  def down
		remove_column :shops, :is_recommended
  end
end
