class Client < ApplicationRecord
  has_many :client_strengths, dependent: :destroy
  has_many :strengths, through: :client_strengths

  accepts_nested_attributes_for :client_strengths
end
