class CreateParentRelationships < ActiveRecord::Migration
  def self.up
    create_table :parent_relationships do |t|
      t.integer :parent_id
      t.integer :child_id

      t.timestamps
    end
  end

  def self.down
    drop_table :parent_relationships
  end
end
