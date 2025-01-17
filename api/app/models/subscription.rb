# frozen_string_literal: true

# == Schema Information
#
# Table name: subscriptions
#
#  id                  :uuid             not null, primary key
#  name                :string           not null
#  description         :string
#  start_date          :datetime         not null
#  end_date            :datetime         not null
#  action_auth_user_id :uuid
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  type                :enum             default("free"), not null
#
class Subscription < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :type, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :user_id, presence: true
  enum type: {free: "free", premium: "premium", hifi: "hifi"}
end
