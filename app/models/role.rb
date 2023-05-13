class Role < ApplicationRecord
  validates :title, presence: true
  validates :status, presence: true
  has_many  :logentries
end
