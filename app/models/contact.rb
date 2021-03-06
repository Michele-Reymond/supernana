class Contact < ApplicationRecord
  belongs_to :user

  validates :first_name, :last_name, :phone_number, presence: true
  validates :phone_number, uniqueness: true
  validates :phone_number, format: { with: /\A\+41\d{9}\z/,
    message: "n'est pas au bon format. Ex: +41 76 557 58 52" }
end

