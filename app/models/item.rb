class Item < ApplicationRecord
  belongs_to :user
  has_one :purchase, dependent: :destroy
end
