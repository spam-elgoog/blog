@category_list =
  [[:supplies, 'Office Supplies',
    'Buiness related supplies, stationary etc.'],
   [:shipping, 'Shipping Expenses',
    'Track your monthly shipping costs.'],
   [:transportation, 'Transportation',
    'Transportation related costs, fuel, insurance.'],
   [:storage, 'Product Storage',
    'Warehousing costs, temporary storage and so on'],
   [:website, 'Website Expenses',
    'Website management, hosting and platform fees.'],
   [:permits, 'Permits and Licensing',
    'Business licensing, health inspection certifications if making food.'],
   [:utils, 'Utilities',
    'Monthly cable and internet and similar costs.'],
   [:ads, 'Marketing and Advertising',
    'Marketing campaigns or ads you ran.'],
   [:apps, 'App Subscriptions',
    'All your subscription whether apps or software.'],
   [:refunds, 'Returns and Refunds',
    'Returned items and/or refunds you have issued.'],
   [:damages, 'Damaged Goods',
    'Track damaged and lost items.'],
   [:misc, 'All Other Expenses',
    'One time costs and items that just do not fit anywhere else.']]

def populate_categories
  @category_list.each do |x|
    Category.create(
      category: x[0].to_s,
      short_desc: x[1],
      full_desc: x[2]
    )
  end
  puts 'INFO: Categories table populated.'
end

def populate_users
  users = []
  users << User.create(f_name: 'Mike', l_name: 'Sanders', email: 'mike@gm.com',
                       user_name: 'mikesanders', admin: false,
                       password: 'password', password_confirmation: 'password')
  users << User.create(f_name: 'Sam', l_name: 'Hinds', email: 'sam@gm.com',
                       user_name: 'samhinds', admin: false, password: 'password',
                       password_confirmation: 'password')
  users << User.create(f_name: 'Anita', l_name: 'Wong', email: 'anita@gm.com',
                       user_name: 'anitawong', admin: false, password: 'password',
                       password_confirmation: 'password')
  users << User.create(f_name: 'John', l_name: 'Good', email: 'john@gm.com',
                       user_name: 'johngood', admin: false, password: 'password',
                       password_confirmation: 'password')
  users << User.create(f_name: 'Indira', l_name: 'Ghandi', email: 'indira@gm.com',
                       user_name: 'indiraghandi', admin: false,
                       password: 'password',
                       password_confirmation: 'password')
  users << User.create(f_name: 'Peter', l_name: 'Spam', email: 'spam@gm.com',
                       user_name: 'peterspam', admin: true,
                       password: 'tophat.made',
                       password_confirmation: 'tophat.made')
  users << User.create(f_name: 'Jana', l_name: 'Fling', email: 'jana@gm.com',
                       user_name: 'janafling', admin: false, password: 'password',
                       password_confirmation: 'password')
  puts 'INFO: Users table populated.'
  users
end
# mike_nov = BudgetPlan.create(user_id: john, date: Date.new(2019,11, clear1))
# mike_oct = BudgetPlan.create(user_id: john, date: Date.new(2019,11, 1))

# john  = User.create(f_name: 'John', l_name: 'Good', email: 'john@gm.com',
#                     user_name: 'johngood', admin: false, password: 'password',
#                     password_confirmation: 'password')
# #john = User.find()
# salami = Category.create(category: 'salami', short_desc: 'Damaged Goods',
#                          full_desc: 'Track damaged and lost items.')
# salami_2 = Category.create(category: 'salami_2', short_desc: 'Damaged Goods_2',
#                            full_desc: 'Track damaged and lost items._2')
# @category_list =
#   [[:lunches, 'Book and Burgers',
#     'Anytime you go out on my account'],
#    [:swimming, 'Swimming Expenses',
#     'Jump n tha pool']]
