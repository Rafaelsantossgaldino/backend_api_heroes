class Hero < ApplicationRecord
  mount_uploader :image, FileUploader

  validates :name, presence: true

  scope :sorted_by_name, -> { order(:name) }
end
