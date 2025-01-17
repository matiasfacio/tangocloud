# frozen_string_literal: true

# == Schema Information
#
# Table name: albums
#
#  id                :uuid             not null, primary key
#  title             :string           not null
#  description       :text
#  release_date      :date
#  recordings_count  :integer          default(0), not null
#  slug              :string           not null
#  external_id       :string
#  transfer_agent_id :uuid
#  type              :enum             default("compilation"), not null
#
require "rails_helper"

RSpec.describe Album, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
