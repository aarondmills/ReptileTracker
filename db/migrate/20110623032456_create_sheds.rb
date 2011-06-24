class CreateSheds < ActiveRecord::Migration
  def self.up
    create_table :sheds do |t|
      t.string :date
      t.string :description
      t.boolean :full_shed
      t.string :length

      t.timestamps
    end
  end

  def self.down
    drop_table :sheds
  end
end
