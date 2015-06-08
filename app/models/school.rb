class School < ActiveRecord::Base
  validates :name, :presence => true
  validates :network_id, :presence => true

  belongs_to :network , :class_name => "Network", :foreign_key => "network_id"
end
