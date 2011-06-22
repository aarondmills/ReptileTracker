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

end
