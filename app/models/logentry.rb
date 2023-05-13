class Logentry < ApplicationRecord
  VALID_TYPES = ['Manual', 'System']
  validates :entry_type, inclusion: { in: VALID_TYPES }
  validates :body, presence: true
  belongs_to :role
end
