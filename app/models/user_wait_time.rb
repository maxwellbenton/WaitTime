class UserWaitTime < ApplicationRecord
    belongs_to :user
    belongs_to :store
   
    def self.all_wait_times
        self.all.map {|uwt| (uwt.updated_at - uwt.created_at)}
    end


    
    


end
