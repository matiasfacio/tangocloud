# frozen_string_literal: true

# == Schema Information
#
# Table name: audios
#
#  id            :uuid             not null, primary key
#  bit_rate      :integer
#  sample_rate   :integer
#  channels      :integer
#  bit_depth     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  bit_rate_mode :string
#  codec         :string
#  length        :float
#  encoder       :string
#  metadata      :jsonb            not null
#
class Audio < ApplicationRecord
  has_many :audio_transfers, dependent: :destroy
  has_many :transfer_agents, through: :audio_transfers

  validates :duration, presence: true
  validates :format, presence: true
  validates :bit_rate, numericality: {only_integer: true}
  validates :sample_rate, numericality: {only_integer: true}
  validates :channels, numericality: {only_integer: true}
  validates :bit_depth, numericality: {only_integer: true}
end
