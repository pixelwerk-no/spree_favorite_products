class AddVariantsToFavorites < ActiveRecord::Migration
  def change
    add_column :spree_favorites, :variant_id
    add_index :spree_favorites, :variant_id
  end
end
