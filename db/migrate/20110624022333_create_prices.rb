class CreatePrices < ActiveRecord::Migration
  def self.up
    create_table :prices do |t|
      t.integer :breed_id
      t.integer :quarterly_report_id
      t.string :date
      t.float :price
      t.string :source

      t.timestamps
    end
  end

  def self.down
    drop_table :prices
  end
end
