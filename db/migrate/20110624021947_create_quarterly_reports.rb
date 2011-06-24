class CreateQuarterlyReports < ActiveRecord::Migration
  def self.up
    create_table :quarterly_reports do |t|
      t.integer :market_id
      t.string :name
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :quarterly_reports
  end
end
