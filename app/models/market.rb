class Market < ActiveRecord::Base
	belongs_to :breed
	has_many :quarterly_reports

	accepts_nested_attributes_for :quarterly_reports
end
