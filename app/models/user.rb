class User < ApplicationRecord
    validates :username, presence: true, length: { in: 4..16 }, uniqueness: true
    validates :password, presence: true, length: { in: 6..20 }
    validates :email, presence: true, length: { minimum: 5 }, uniqueness: true, format: { with: /\A\S+@.+\.\S+\z/, message: "Must be in email format" }

    has_many :posts
    has_many :comments
end
