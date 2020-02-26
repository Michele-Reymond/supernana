class Alert < ApplicationRecord
  belongs_to :user
  has_many :messages

  validates :started_at, presence: true

  def send_message(client)
    number = "#{self.user.contacts.first.phone_number.to_i.to_s}"
    contact = self.user.contacts.first.first_name
    user = self.user.first_name
    message = Message.new(alert_id: self.id)
      client.sms.send(
        from: "Supernana",
        to: number,
        text: "Bonjour #{contact} , #{user} est en danger"
      )
    message.save
  end
end
