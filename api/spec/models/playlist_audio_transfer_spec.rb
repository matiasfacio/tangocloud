# frozen_string_literal: true

# == Schema Information
#
# Table name: playlist_audio_transfers
#
#  id                :uuid             not null, primary key
#  playlist_id       :uuid             not null
#  audio_transfer_id :uuid             not null
#  position          :integer          default(0), not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require "rails_helper"

RSpec.describe PlaylistAudioTransfer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
