class CreateNoteSources < ActiveRecord::Migration[5.0]
  def change
    create_table :note_sources do |t|
      t.references :provider, foreign_key: true
      t.references :note, foreign_key: true

      t.timestamps
    end
  end
end
