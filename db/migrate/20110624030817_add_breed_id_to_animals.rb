class AddBreedIdToAnimals < ActiveRecord::Migration
  def self.up
    add_column :animals, :breed_id, :integer
  end

  def self.down
    remove_column :animals, :breed_id
  end
end
