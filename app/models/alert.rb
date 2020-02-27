class Alert < ApplicationRecord
  belongs_to :user
  has_many :messages
  validates :started_at, presence: true

  after_create :send_message

  private

  def send_message
    SendMessageJob.perform_later(self.id) if self.user.contacts.any?
  end
end
