class DrinkUser < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :drink, optional: true

end
