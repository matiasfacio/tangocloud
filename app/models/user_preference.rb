# frozen_string_literal: true

# == Schema Information
#
# Table name: user_preferences
#
#  id         :uuid             not null, primary key
#  username   :string           default(""), not null
#  first_name :string
#  last_name  :string
#  gender     :string
#  birth_date :string
#  locale     :string           default("en"), not null
#  user_id    :uuid             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class UserPreference < ApplicationRecord
  validates :username, presence: true
  validates :locale, presence: true
  validates :user_id, presence: true
  validates :locale, inclusion: {in: ["en", "es"]}
end