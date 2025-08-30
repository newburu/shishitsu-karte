class Strength < ApplicationRecord
  has_many :client_strengths, dependent: :destroy
  has_many :clients, through: :client_strengths
end
