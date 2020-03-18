class User < ApplicationRecord
    has_many :favorites
    has_many :babynames, through: :favorites
    has_secure_password
end