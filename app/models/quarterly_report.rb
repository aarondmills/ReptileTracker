class QuarterlyReport < ActiveRecord::Base
	belongs_to :market
	has_many :prices
	accepts_nested_attributes_for :prices
end
