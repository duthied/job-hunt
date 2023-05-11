class Role < ApplicationRecord
  validates :title, presence: true
  validates :status, presence: true
  # validates :url, presence: true

  # validates :notes, presence: true, length: { minimum: 10 }
end
