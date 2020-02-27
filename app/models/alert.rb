class Alert < ApplicationRecord

  reverse_geocoded_by :latitude, :longitude, params: { language: 'fr' }
  belongs_to :user
  has_many :messages
  validates :started_at, presence: true

  after_create :send_message
  after_validation :reverse_geocode

  private

  def send_message
    SendMessageJob.perform_later(self.id) if self.user.contacts.any?
  end
end
