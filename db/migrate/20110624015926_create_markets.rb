class CreateMarkets < ActiveRecord::Migration
  def self.up
    create_table :markets do |t|
      t.integer :species_id
      t.integer :year

      t.timestamps
    end
  end

  def self.down
    drop_table :markets
  end
end
