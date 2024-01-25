# frozen_string_literal: true

# == Schema Information
#
# Table name: compositions
#
#  id             :uuid             not null, primary key
#  title          :string           not null
#  tangotube_slug :string
#  genre_id       :uuid             not null
#  lyricist_id    :uuid             not null
#  composer_id    :uuid             not null
#  listens_count  :integer
#  popularity     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "rails_helper"

RSpec.describe Composition, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
