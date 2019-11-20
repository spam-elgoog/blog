# frozen_string_literal: true

# This is the Expense model
class Expense < ApplicationRecord
  belongs_to :budget_plan
  belongs_to :category
end
