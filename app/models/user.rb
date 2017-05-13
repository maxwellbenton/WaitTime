class User < ApplicationRecord
    has_many :user_wait_times
    has_many :stores, through: :user_wait_times
    geocoded_by :location
    after_validation :geocode, :if => :location_changed?

    def wait_times
        self.user_wait_times.map {|uwt| (uwt.updated_at - uwt.created_at)}
    end

    def self.current_coords(coords)
        marker = "&markers=color:blue"
        marklist = "%7C#{coords[0]},#{coords[1]}"
        api = "&key=AIzaSyB3F176LCpeD1f-yhcdxLpEIGQawbGQBIU"

        marker.concat(marklist).concat(api)
    end
end

