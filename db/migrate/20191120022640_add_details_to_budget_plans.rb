class AddDetailsToBudgetPlans < ActiveRecord::Migration[6.0]
  def change
    remove_index :budget_plans, column: :date
    rename_column :budget_plans, :date, :plan_date
    add_index :budget_plans,
              %i[user_id plan_date],
              unique: true,
              name: 'user_id_and_plan_date'
  end
end
