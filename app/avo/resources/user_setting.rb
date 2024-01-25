class Avo::Resources::UserSetting < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :user_id, as: :text
    field :admin, as: :boolean
    field :user, as: :belongs_to
  end
end
