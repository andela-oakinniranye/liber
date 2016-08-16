class Provider < ApplicationRecord
  has_many :note_sources
  has_many :notes
  has_many :user_providers
  has_many :users, through: :user_providers
end
