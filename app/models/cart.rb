class Cart < ApplicationRecord
  belongs_to :buyer
  has_many :solds
end
