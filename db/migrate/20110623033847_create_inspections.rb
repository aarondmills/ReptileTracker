class CreateInspections < ActiveRecord::Migration
  def self.up
    create_table :inspections do |t|
      t.string :date
      t.integer :animal_id
      t.string :length
      t.string :weight
      t.boolean :disease
      t.string :temperment
      t.boolean :mouth
      t.boolean :vent
      t.boolean :eyes
      t.string :belly
      t.text :outcome

      t.timestamps
    end
  end

  def self.down
    drop_table :inspections
  end
end
