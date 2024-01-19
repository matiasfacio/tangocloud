# frozen_string_literal: true

# == Schema Information
#
# Table name: audio_transfers
#
#  id                :integer          not null, primary key
#  method            :string           not null
#  external_id       :string
#  recording_date    :date
#  transfer_agent_id :integer
#  audio_id          :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require "rails_helper"

RSpec.describe AudioTransfer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
