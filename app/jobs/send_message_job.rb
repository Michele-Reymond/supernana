class SendMessageJob < ApplicationJob
  queue_as :default

  def perform(alert_id)
    client = Nexmo::Client.new(api_key: ENV['NEXMO_API_KEY'], api_secret: ENV['NEXMO_API_SECRET'])
    alert = Alert.find(alert_id)
    number = "#{alert.user.contacts.first.phone_number.to_i.to_s}"
    contact = alert.user.contacts.first.first_name
    user = alert.user.first_name
    message = Message.new(alert_id: alert.id)
      client.sms.send(
        from: "Supernana",
        to: number,
        text: "Bonjour #{contact} , #{user} est en danger, allez lui porter secours à l'adresse suivante: https://www.google.com/maps/search/?api=1&query=#{alert.latitude},#{alert.longitude} "
      )
  end
end

