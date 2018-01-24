class User < ApplicationRecord

  has_many :drink_users
  has_many :drinks, through: :drink_users
  accepts_nested_attributes_for :drink_users, allow_destroy: true


end
