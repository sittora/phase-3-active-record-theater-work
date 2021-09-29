class Role < ActiveRecord::Base
    has_many :auditions

    #  Role#auditions returns all of the auditions associated with this role
    def auditions()
        Audition.where(role_id: self.id)
    end

    # Role#actors returns an array of names from the actors associated with this role
    def actors()
        auditions = Audition.where(role_id: self.id)
        to_return = auditions.map { |audition|
            return audition.actor
        }

        return to_return
    end

# Role#locations returns an array of locations from the auditions associated with this role
    def locations()
        auditions = Audition.where(role_id: self.id)
        to_return = auditions.map { |audition|
            return audition.location
        }

        return to_return
    end

# Role#lead returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'
    def lead()
        lead = Audition.find_by(hired: true)
        return lead
        # if !lead
        #     return "no actor has been hired for this role"
        # else
        #     return lead
        # end
    end

# Role#understudy returns the second instance of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'    
    def self.understudy
        roles = Role.where(hired: true)
        if !roles[1]
            return "no actor has been hired for understudy for this role"
        else
            return roles[1]
        end
    end
    
      
  end