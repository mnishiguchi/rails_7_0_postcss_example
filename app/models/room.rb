class Room < ApplicationRecord
  has_many :messages, dependent: :destroy

  broadcasts

  validates :name, presence: true
end
