class AddSpeciesIdToAnimal < ActiveRecord::Migration
  def self.up
		add_column :animals, :species_id, :integer
  end

  def self.down
		remove_column :animals, :species_id
  end
end
