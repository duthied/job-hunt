class Role < ApplicationRecord
  validates :title, presence: true
  validates :status, presence: true

  VALID_STATUSES = ['Lead', 'Interviewing', 'Bailed', 'Waiting']
  validates :status, inclusion: { in: VALID_STATUSES }
  
  has_many  :logentries
end
