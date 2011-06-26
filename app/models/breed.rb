class Breed < ActiveRecord::Base
	has_many :animals
	belongs_to :species
	has_many :markets
	has_many :prices

	accepts_nested_attributes_for :animals, :markets, :prices	


	#VALIDATIONS

	validates_presence_of :name

end
