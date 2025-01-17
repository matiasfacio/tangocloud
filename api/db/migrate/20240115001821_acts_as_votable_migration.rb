# frozen_string_literal: true

class ActsAsVotableMigration < ActiveRecord::Migration[7.0]
  def self.up
    create_table :votes, id: :uuid do |t|
      t.belongs_to :votable, polymorphic: true
      t.belongs_to :voter, polymorphic: true

      t.boolean :vote_flag
      t.string :vote_scope
      t.integer :vote_weight

      t.timestamps
    end

    add_index :votes, [:voter_id, :voter_type, :vote_scope]
    add_index :votes, [:votable_id, :votable_type, :vote_scope]
  end

  def self.down
    drop_table :votes
  end
end
