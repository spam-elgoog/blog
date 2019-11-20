class Category < ApplicationRecord
  has_many :budget_details
  has_many :expenses
end
