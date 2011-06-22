class CreateAnimals < ActiveRecord::Migration
  def self.up
    create_table :animals do |t|
      t.string :name
      t.string :birthdate
      t.string :birth_weight
      t.string :length
      t.string :birth_location
      t.string :breeder_name
      t.string :breeder_email

      t.timestamps
    end
  end

  def self.down
    drop_table :animals
  end
end
