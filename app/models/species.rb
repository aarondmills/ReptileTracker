class Species < ActiveRecord::Base
	has_many :animals
	has_many :breeds

	accepts_nested_attributes_for :animals, :breeds


	#VALIDATIONS

	validates_presence_of :name

end
