class User < ApplicationRecord
    has_many :appointments
    validates :name, presence: true, uniqueness: true
end
