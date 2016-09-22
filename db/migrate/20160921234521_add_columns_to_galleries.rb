class AddColumnsToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :lat, :float
    add_column :galleries, :lng, :float
  end
end
