class User < ApplicationRecord
    has_many :teams

    validates_presence_of :username
    validates_uniqueness_of :username
    validates_presence_of :email
    validates_uniqueness_of :email
end
