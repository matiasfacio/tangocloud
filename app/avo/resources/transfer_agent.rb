# frozen_string_literal: true

class Avo::Resources::TransferAgent < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :name, as: :text
    field :description, as: :textarea
    field :url, as: :text
    field :image, as: :file
    field :logo, as: :file
  end
end
