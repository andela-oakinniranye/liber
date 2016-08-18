class Note < ApplicationRecord
  belongs_to :book
  
  has_one :note_source
  has_one :provider, through: :note_source
end
