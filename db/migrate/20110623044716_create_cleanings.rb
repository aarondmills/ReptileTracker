class CreateCleanings < ActiveRecord::Migration
  def self.up
    create_table :cleanings do |t|
      t.string :date
      t.boolean :fresh_water
      t.boolean :fresh_bedding
      t.boolean :heat_check
      t.boolean :handled_animal
      t.text :notes
      t.integer :animal_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cleanings
  end
end
