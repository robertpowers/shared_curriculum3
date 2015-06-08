class Mastertoy < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :thumbnailurl, :presence => true, :uniqueness => true

  has_many :uniqueresources , :class_name => "Uniqueresource", :foreign_key => "mastertoy_id"
end
