# frozen_string_literal: true

class CreateRecordings < ActiveRecord::Migration[7.1]
  def change
    create_table :recordings, id: :uuid do |t|
      t.string :title, null: false
      t.integer :bpm
      t.integer :type, null: false, default: "0"
      t.date :release_date
      t.date :recorded_date
      t.belongs_to :el_recodo_song, foreign_key: true, type: :uuid
      t.belongs_to :orchestra, foreign_key: true, type: :uuid
      t.belongs_to :singer, foreign_key: true, type: :uuid
      t.belongs_to :composition, foreign_key: true, type: :uuid
      t.belongs_to :label, foreign_key: true, type: :uuid
      t.belongs_to :genre, foreign_key: true, type: :uuid
      t.belongs_to :period, foreign_key: true, type: :uuid
    end
  end
end
