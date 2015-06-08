class Theme < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :thumbnailurl, :presence => true, :uniqueness => true

  has_many :learningunits , :class_name => "Learningunit", :foreign_key => "theme_id"
end
