class User < ApplicationRecord
    has_many :orders
    has_many :bakeries, through: :orders
end