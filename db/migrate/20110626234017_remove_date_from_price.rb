class RemoveDateFromPrice < ActiveRecord::Migration
  def self.up
    remove_column :prices, :date
  end

  def self.down
    add_column :prices, :date, :string
  end
end
