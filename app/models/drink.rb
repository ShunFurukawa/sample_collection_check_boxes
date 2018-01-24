class Drink < ApplicationRecord

  has_many :drink_users
  has_many :users, through: :drink_users

end
