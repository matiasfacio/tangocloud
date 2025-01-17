# frozen_string_literal: true

class CreateUserSettings < ActiveRecord::Migration[7.1]
  def change
    create_table :user_settings, id: :uuid do |t|
      t.belongs_to :user, null: false, foreign_key: {to_table: :action_auth_users}, type: :uuid
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
