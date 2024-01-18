# frozen_string_literal: true

class CreateComposers < ActiveRecord::Migration[7.1]
  def change
    create_table :composers, id: :uuid, id: false do |t|
      t.primary_key :id, :string, default: -> { "ULID()" }

      t.string :name, null: false, default: ""
      t.date :birth_date
      t.date :death_date
      t.timestamps
    end
  end
end