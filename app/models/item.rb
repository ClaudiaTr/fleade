class Item < ApplicationRecord
  belongs_to :user
  has_one :purchase, dependant: :destroy
end