# frozen_string_literal: true

class CreateCoupleVideos < ActiveRecord::Migration[7.1]
  def change
    create_table :couple_videos, id: false do |t|
      t.primary_key :id, :string, default: -> { "ULID()" }
      t.references :couple, null: false, foreign_key: true, type: :string
      t.references :video, null: false, foreign_key: true, type: :string
    end
  end
end
