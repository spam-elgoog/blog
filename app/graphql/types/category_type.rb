module Types
  class CategoryType < Types::BaseObject
    field :id, ID, null: false, description: 'Auto Generated ID'
    field :category, String, null: false, description: ''
    field :short_desc, String, null: false, description: ''
    field :full_desc, String, null: false, description: ''
  end
end
