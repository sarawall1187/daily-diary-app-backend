class User < ApplicationRecord
    has_secure_password
    has_many :entries

   validates :username, :email, :password, presence: true 
   validates :username, uniqueness: true
end
