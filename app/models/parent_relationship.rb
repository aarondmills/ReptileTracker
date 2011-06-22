class ParentRelationship < ActiveRecord::Base
	belongs_to :parent, :class_name => "Animal"
  belongs_to :child, :class_name => "Animal"
end
