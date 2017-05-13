class Store < ApplicationRecord
    has_many :user_wait_times
    has_many :users, through: :stores
    geocoded_by :address
    after_validation :geocode, :if => :address_changed?

    def wait_times
        self.user_wait_times.map {|uwt| (uwt.updated_at - uwt.created_at)}
    end
end
