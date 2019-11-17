module Types
  class QueryType < Types::BaseObject
    
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :all_users, [UserType], null: false
    # this method is invoked, when `all_users` fields is being resolved
    def all_users
      User.all
    end

    field :user, UserType, null: false do
      argument :user_name, String, required: true
    end

    def user(user_name:)
      User.find_by(user_name: user_name)
    end

    field :all_categories, [CategoryType], null: false
    # this method is invoked, when `all_users` fields is being resolved
    def all_categories
      # Category.all
    end
  end
end
