class NoteSource < ApplicationRecord
  belongs_to :provider
  belongs_to :note
end
