class AddAnimalIdToShed < ActiveRecord::Migration
  def self.up
    add_column :sheds, :animal_id, :integer
  end

  def self.down
    remove_column :sheds, :animal_id
  end
end
