# frozen_string_literal: true

# == Schema Information
#
# Table name: tandas
#
#  id                :integer          not null, primary key
#  name              :string           not null
#  description       :string
#  public            :boolean          default(TRUE), not null
#  audio_transfer_id :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require "rails_helper"

RSpec.describe Tanda, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end