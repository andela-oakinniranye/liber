class CreateUserProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :user_providers do |t|
      t.references :user, foreign_key: true
      t.references :provider, foreign_key: true
      t.string :api_key
      t.string :access_token
      t.string :refresh_token

      t.timestamps
    end
  end
end
