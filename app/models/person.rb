class Person < ApplicationRecord

  validates :name, :email, :nickname, :phone, presence: true
end
