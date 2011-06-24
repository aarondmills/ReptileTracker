class AddAnimalIdToFeeding < ActiveRecord::Migration
  def self.up
    add_column :feedings, :animal_id, :integer
  end

  def self.down
    remove_column :feedings, :animal_id
  end
end
