class Audition < ActiveRecord::Base
  belongs_to :role

    # Audition#role returns an instance of role associated with this audition
  def self.role
    role = Role.find_by(id: self.role_id)
    return role.character_name
  end

    # Audition#call_back will change the the hired attribute to true
  def call_back()
    self.hired = true
  end
end