class Buyer < ApplicationRecord
  has_secure_password
  has_many :items
  has_many :sold_items

  validates :first_name, :last_name, :address, :city, presence: true
  validates :state, presence: true, length: {is: 2}
  validates :zip, presence: true, length: {is: 5}, numericality: {only_integer: true}
  validates :phone, presence: true, length: {is: 10}, numericality: {only_integer: true}
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates :password, length: {minimum: 8}
end
