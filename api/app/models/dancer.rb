# frozen_string_literal: true

# == Schema Information
#
# Table name: dancers
#
#  id          :uuid             not null, primary key
#  name        :string           not null
#  nickname    :string
#  nationality :string
#  birth_date  :date
#  death_date  :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Dancer < ApplicationRecord
  validates :name, presence: true
  has_many :dancer_videos, dependent: :destroy
  has_many :videos, through: :dancer_videos
  has_many :couples, dependent: :destroy
  has_many :partners, through: :couples
end
