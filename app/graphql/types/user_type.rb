module Types
    class UserType < Types::BaseObject
      # Add root-level fields here.
      # They will be entry points for queries on your schema.
      field :id, ID, null: false, description: "Auto Generated ID"
      field :f_name, String, null: false, description: ""
      field :l_name, String, null: false, description: ""
      field :email, String, null: false, description: ""
      field :user_name, String, null: false, description: ""
    end
end
