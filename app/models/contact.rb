class Contact < ApplicationRecord
  belongs_to :user

  validates :first_name, :last_name, :phone_number, presence: true
  validates :phone_number, uniqueness: true
  validates :phone_number, format: { with: /\+41\d{9}/,
    message: "The phone number is not in the right format! Ex: +41 76 557 58 52" }
end

