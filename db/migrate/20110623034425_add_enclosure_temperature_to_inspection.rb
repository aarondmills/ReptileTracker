class AddEnclosureTemperatureToInspection < ActiveRecord::Migration
  def self.up
    add_column :inspections, :enclosure_temperature, :string
    add_column :inspections, :hotspot_temperature, :string
    add_column :inspections, :fecies, :boolean
    add_column :inspections, :water, :string
  end

  def self.down
    remove_column :inspections, :water
    remove_column :inspections, :fecies
    remove_column :inspections, :hotspot_temperature
    remove_column :inspections, :enclosure_temperature
  end
end
