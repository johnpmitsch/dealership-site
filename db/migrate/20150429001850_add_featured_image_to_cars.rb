class AddFeaturedImageToCars < ActiveRecord::Migration
  def change
    add_column :cars, :featured_image, :string
  end
end
