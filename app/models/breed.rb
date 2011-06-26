class Breed < ActiveRecord::Base
	has_many :animals
	belongs_to :species
	has_many :markets

	accepts_nested_attributes_for :animals, :markets


	#VALIDATIONS

	validates_presence_of :name

end
