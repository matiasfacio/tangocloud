# frozen_string_literal: true

class CreateDancers < ActiveRecord::Migration[7.1]
  def change
    create_table :dancers, force: true, id: false do |t|
      t.primary_key :id, :string, default: -> { "ULID()" }
      t.string :name, null: false
      t.string :nickname
      t.string :nationality
      t.date :birth_date
      t.date :death_date
      t.timestamps
    end
  end
end
