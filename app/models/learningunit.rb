class Learningunit < ActiveRecord::Base

  has_many :uniqueresources , :class_name => "Uniqueresource", :foreign_key => "learningunit_id"
  belongs_to :network , :class_name => "Network", :foreign_key => "network_id"
  belongs_to :theme , :class_name => "Theme", :foreign_key => "theme_id"

  def network_theme
    return "#{self.network.name}:    #{self.theme.name}"
  end
end
