class User < ApplicationRecord
  has_many :books
  has_many :notes, through: :books
  has_many :user_providers
  has_many :providers, through: :user_providers

  has_secure_password

  def fullname
    [firstname, lastname].join(' ')
  end
end
