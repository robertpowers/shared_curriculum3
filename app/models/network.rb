class Network < ActiveRecord::Base
  validates :theme_id, :presence => true
  validates :network_id, :presence => true

  has_many :learningunits , :class_name => "Learningunit", :foreign_key => "network_id"
  has_many :schools , :class_name => "School", :foreign_key => "network_id"
  belongs_to :user
end
