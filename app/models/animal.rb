class Animal < ActiveRecord::Base
  
  validates_presence_of :name

  has_many     :parent_child_relationships,
               :class_name            => "ParentRelationship",
               :foreign_key           => :child_id,
               :dependent             => :destroy
  
	has_many     :parents,
               :through               => :parent_child_relationships,
               :source                => :parent

  has_many     :child_parent_relationships,
               :class_name            => "ParentRelationship",
               :foreign_key           => :parent_id,
               :dependent             => :destroy
  
	has_many     :children,
               :through               => :child_parent_relationships,
               :source                => :child

	belongs_to 	 :species
	
	belongs_to   :breed

	has_many 		 :sheds
	
	has_many 		 :inspections

	has_many 		 :feedings

	has_many 		 :cleanings


	accepts_nested_attributes_for :sheds, :inspections, :feedings

end
