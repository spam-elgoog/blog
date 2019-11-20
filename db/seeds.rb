require_relative 'data_helper'

def random_amount(range)
  rand(range) * 1.01
end

def add_budget_details(plan)
  cats = Category.all
  cats.each do |cat|
    # Get random amount for eacch category
    amount =  case cat.category.to_sym
              when :ads, :apps then random_amount 75..150
              when :refunds, :damages, :misc then random_amount 100..300
              when :transportation, :permits then random_amount 200..400
              when :storage then random_amount 800..1500
              # supplies, refunds, utils, website and anything I missed
              else random_amount 50..200
              end
    plan.budget_details.create(category_id: cat.id, amount: amount)
  end
end

populate_categories

users = populate_users

# leave last 3 records with no Budget Plans to start so there are users
# with no budgets available.
users[0..(users.length - 3)].each do |x|
  # initialize a November budget
  add_budget_details x.budget_plans.create(plan_date: Date.new(2019, 11, 1))
  # every second user initialize an October budget also
  if x.id.even?
    add_budget_details x.budget_plans.create(plan_date: Date.new(2019, 10, 1))
  end
  puts 'INFO: Budget_Plans and Budget_Details table populated.'
end
