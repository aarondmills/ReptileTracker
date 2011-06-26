class AddGenderToPrice < ActiveRecord::Migration
  def self.up
    add_column :prices, :gender, :string
  end

  def self.down
    remove_column :prices, :gender
  end
end
