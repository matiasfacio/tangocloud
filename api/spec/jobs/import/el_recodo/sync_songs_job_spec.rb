# frozen_string_literal: true

require "rails_helper"

RSpec.describe Import::ElRecodo::SyncSongsJob, type: :job do
  describe "#perform" do
    it "calls sync_songs on SongSynchronizer" do
      song_synchronizer_instance = instance_double("Import::ElRecodo::SongSynchronizer")
      allow(Import::ElRecodo::SongSynchronizer).to receive(:new).and_return(song_synchronizer_instance)

      expect(song_synchronizer_instance).to receive(:sync_songs)
      Import::ElRecodo::SyncSongsJob.perform_now
    end
  end
end
