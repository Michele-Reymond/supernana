class Alert < ApplicationRecord
  belongs_to :user
  has_many :messages

  validates :started_at, presence: true
end
