# frozen_string_literal: true

# == Schema Information
#
# Table name: audios
#
#  id            :uuid             not null, primary key
#  format        :string           not null
#  bit_rate      :integer
#  sample_rate   :integer
#  channels      :integer
#  bit_depth     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  bit_rate_mode :string
#  codec         :string
#  file_size     :integer
#  length        :float
#  encoder       :string
#  filename      :string
#
require "rails_helper"

RSpec.describe Audio, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
