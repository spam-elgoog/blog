class User < ApplicationRecord
  has_many :budget_plans, dependent: :destroy
  has_many :budget_details, through: :budget_plans
  has_secure_password
end
