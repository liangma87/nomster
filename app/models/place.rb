class Place < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :photos, dependent: :destroy

  validates :name, presence: true, length: { minimum: 3 }
  validates :description, presence: true
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode
end
