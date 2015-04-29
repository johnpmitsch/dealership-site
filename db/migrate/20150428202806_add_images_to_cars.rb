class AddImagesToCars < ActiveRecord::Migration
  def change
    add_column :cars, :image, :json
  end
end
