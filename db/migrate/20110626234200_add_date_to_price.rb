class AddDateToPrice < ActiveRecord::Migration
  def self.up
    add_column :prices, :date, :date
  end

  def self.down
    remove_column :prices, :date
  end
end
