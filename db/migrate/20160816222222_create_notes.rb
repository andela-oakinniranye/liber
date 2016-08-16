class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :name
      t.references :book, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
