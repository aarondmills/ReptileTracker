class AddDescriptionToFeeding < ActiveRecord::Migration
  def self.up
    add_column :feedings, :description, :text
  end

  def self.down
    remove_column :feedings, :description
  end
end
