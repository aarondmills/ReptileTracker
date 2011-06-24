class CreateBreeds < ActiveRecord::Migration
  def self.up
    create_table :breeds do |t|
      t.string :name
      t.string :description
      t.string :species_id

      t.timestamps
    end
  end

  def self.down
    drop_table :breeds
  end
end
