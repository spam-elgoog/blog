# This file should contain all the record creation needed
# to seed the database with its default values.
# The data can then be loaded with the rails db:seed command
# (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' },
#   { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# mike = User.create(f_name: 'Mike', l_name: 'Sanders', email: 'mike@gm.com',
#                    user_name: 'mikesanders', admin: false, password: 'password',
#                    password_confirmation: 'password')
# sam = User.create(f_name: 'Sam', l_name: 'Hinds', email: 'sam@gm.com',
#                   user_name: 'samhinds', admin: false, password: 'password',
#                   password_confirmation: 'password')
# anita = User.create(f_name: 'Anita', l_name: 'Wong', email: 'anita@gm.com',
#                     user_name: 'anitawong', admin: false, password: 'password',
#                     password_confirmation: 'password')
# indira = User.create(f_name: 'Indira', l_name: 'Ghandi', email: 'indira@gm.com',
#                      user_name: 'indiraghandi', admin: false,
#                      password: 'password',
#                      password_confirmation: 'password')
# peter = User.create(f_name: 'Peter', l_name: 'Spam', email: 'spam@gm.com',
#                     user_name: 'peterspam', admin: true,
#                     password: 'tophat.made',
#                     password_confirmation: 'tophat.made')
# blake = User.create(f_name: 'Jana', l_name: 'Fling', email: 'jana@gm.com',
#                     user_name: 'janafling', admin: false, password: 'password',
#                     password_confirmation: 'password')

# Populating the Categories table

# supplies = Category.create(category: 'supplies', short_desc: 'Office Supplies',
#                            full_desc: 'Buiness related supplies, \
#                            stationary etc.')
# shipping = Category.create(category: 'shipping', short_desc: 'Shipping Expenses',
#                            full_desc: 'Track your monthly shipping costs.')
# trans = Category.create(category: 'transportation', short_desc: 'Transportation',
#                         full_desc: 'Transportation related costs, fuel, \
#                         insurance.')
# storage = Category.create(category: 'storage', short_desc: 'Product Storage',
#                           full_desc: 'Warehousing costs, temporary storage \
#                           and so')
# web = Category.create(category: 'website', short_desc: 'Website Expenses',
#                       full_desc: 'Website management, hosting and platform \
#                       fees.')
# permits = Category.create(category: 'permits',
#                           short_desc: 'Permits and Licensing',
#                           full_desc: 'Business licensing, health inspection \
#                           certifications if making food, etc')
# util = Category.create(category: 'util', short_desc: 'Utilities Expenses',
#                        full_desc: 'Monthly cable and internet and similar \
#                        costs.')
# ads = Category.create(category: 'ads', short_desc: 'Marketing and Advertising',
#                       full_desc: 'Marketing campaigns or ads you ran.')
# apps = Category.create(category: 'apps', short_desc: 'Subscription to Apps',
#                        full_desc: 'All your subscription whether apps or \
#                        software.')
# refunds = Category.create(category: 'refunds',
#                           short_desc: 'Returns and Refunds',
#                           full_desc: 'Returned items and/or refunds you have \
#                           issued.')
# losses = Category.create(category: 'losses', short_desc: 'Damaged Goods',
#                          full_desc: 'Track damaged and lost items.')
# type = Category.create(category: 'misc',
#                        short_desc: 'All Other Expenses',
#                        full_desc: 'One time costs and items that just do not \
#                        fit anywhere else.')
#
# Expenses table
#
# Expenses.create(	category_id	details	amount	user_id	date)
# 1	Groceries 	$65	sam	Nov, 2019
# 1	Groceries 	$32	sam	Dec, 2019
# 3	Gas	        $65	sam	Nov, 2019
# 4	Water bill	$35	sam	Nov, 2019
# 4	Hydro bill	$160 sam	Nov, 2019
# 3	Gas	$75	2	Nov, sam
# 1	Goceries	$42	sam	Nov, 2019