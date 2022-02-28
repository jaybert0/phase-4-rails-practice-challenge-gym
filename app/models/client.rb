class Client < ApplicationRecord
    has_many :memberships, dependent: :destroy
    has_many :gyms, through: :memberships

    def membership_total
        total = 0
        memberships.each {|mem| total += mem.charge }
        total
    end
end
