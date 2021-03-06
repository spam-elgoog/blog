class BudgetPlan < ApplicationRecord
  belongs_to :user
  has_many :budget_details, dependent: :destroy
  has_many :expenses, dependent: :destroy
end
