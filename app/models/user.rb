class User < ApplicationRecord
    has_secure_password
    has_many :entries

#    validates :username, :password, presence: true 
end
