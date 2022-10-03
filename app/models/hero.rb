class Hero < ApplicationRecord
  validates :name, presence: true

  scope :orde_by_name, -> { order(:name) }
end
