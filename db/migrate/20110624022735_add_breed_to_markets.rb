class AddBreedToMarkets < ActiveRecord::Migration
  def self.up
    add_column :markets, :breed_id, :integer
  end

  def self.down
    remove_column :markets, :breed_id
  end
end
