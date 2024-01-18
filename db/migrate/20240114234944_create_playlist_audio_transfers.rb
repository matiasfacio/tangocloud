# frozen_string_literal: true

class CreatePlaylistAudioTransfers < ActiveRecord::Migration[7.1]
  def change
    create_table :playlist_audio_transfers, id: false do |t|
      t.primary_key :id, :string, default: -> { "ULID()" }
      t.references :playlist, null: false, foreign_key: true, type: :string
      t.references :audio_transfer, null: false, foreign_key: true, type: :string
      t.integer :position, null: false, default: 0
      t.timestamps
    end
  end
end
