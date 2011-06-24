class Breed < ActiveRecord::Base
	has_many :animals
	belongs_to :species

	accepts_nested_attributes_for :animals


	#VALIDATIONS

	validates_presence_of :name

end
