class Uniqueresource < ActiveRecord::Base
  validates :learningunit_id, :presence => true
  validates :mastertoy_id, :presence => true

  belongs_to :learningunit , :class_name => "Learningunit", :foreign_key => "learningunit_id"
  belongs_to :mastertoy , :class_name => "Mastertoy", :foreign_key => "mastertoy_id"
end
