class Network < ActiveRecord::Base
  validates :name, :presence => true
  validates :location, :presence => true

  has_many :learningunits , :class_name => "Learningunit", :foreign_key => "network_id"
  has_many :schools , :class_name => "School", :foreign_key => "network_id"
  belongs_to :user
end
