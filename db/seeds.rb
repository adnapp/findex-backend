# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Transaction.destroy_all
MonthlyBudget.destroy_all
Category.destroy_all
# User.destroy_all

User.create({name: "Adam", username: "adnap" })

u1 = User.first

MonthlyBudget.create({name: "Feb 2021 Budget", month: 2, year: 2021, budget: 2000, user: u1 })
MonthlyBudget.create({name: "Jan 2021 Budget", month: 1, year: 2021, budget: 2100, user: u1 })
MonthlyBudget.create({name: "Dec 2020 Budget", month: 12, year: 2020, budget: 1900, user: u1 })
MonthlyBudget.create({name: "Nov 2020 Budget", month: 11, year: 2020, budget: 1900, user: u1 })

mb1 = MonthlyBudget.first
mb2 = MonthlyBudget.second
mb3 = MonthlyBudget.third 
mb4 = MonthlyBudget.fourth

Category.create({name: "Food", budget: 200, monthly_budget: mb1})
Category.create({name: "Clothing", budget: 200, monthly_budget: mb1})
Category.create({name: "Travel", budget: 300, monthly_budget: mb1})
Category.create({name: "Shopping", budget: 500, monthly_budget: mb1})
Category.create({name: "Utilities", budget: 200, monthly_budget: mb1})
Category.create({name: "Entertainment", budget: 200, monthly_budget: mb1})

Category.create({name: "Food", budget: 200, monthly_budget: mb2})
Category.create({name: "Clothing", budget: 200, monthly_budget: mb2})
Category.create({name: "Travel", budget: 300, monthly_budget: mb2})
Category.create({name: "Shopping", budget: 200, monthly_budget: mb2})
Category.create({name: "Utilities", budget: 200, monthly_budget: mb2})
Category.create({name: "Entertainment", budget: 200, monthly_budget: mb2})

Category.create({name: "Food", budget: 200, monthly_budget: mb3})
Category.create({name: "Clothing", budget: 200, monthly_budget: mb3})
Category.create({name: "Travel", budget: 300, monthly_budget: mb3})
Category.create({name: "Shopping", budget: 300, monthly_budget: mb3})
Category.create({name: "Utilities", budget: 200, monthly_budget: mb3})
Category.create({name: "Entertainment", budget: 200, monthly_budget: mb3})

Category.create({name: "Food", budget: 200, monthly_budget: mb4})
Category.create({name: "Clothing", budget: 200, monthly_budget: mb4})
Category.create({name: "Travel", budget: 300, monthly_budget: mb4})
Category.create({name: "Shopping", budget: 400, monthly_budget: mb4})
Category.create({name: "Utilities", budget: 200, monthly_budget: mb4})
Category.create({name: "Entertainment", budget: 200, monthly_budget: mb4})

Transaction.create({category: Category.all[0], name: "Pizza Hut", amount: 49, type: false})
Transaction.create({category: Category.all[0], name: "Polo Club", amount: 499, type: false})
Transaction.create({category: Category.all[0], name: "China Town", amount: 23, type: false})
Transaction.create({category: Category.all[0], name: "11 Mad", amount: 350, type: false})

Transaction.create({category: Category.all[1], name: "Saks", amount: 321, type: false})
Transaction.create({category: Category.all[1], name: "H&M", amount: 100, type: false})
Transaction.create({category: Category.all[1], name: "RL", amount: 34, type: false})

Transaction.create({category: Category.all[2], name: "Uber", amount: 29.40, type: false})
Transaction.create({category: Category.all[2], name: "United Air", amount: 98.40, type: false})
Transaction.create({category: Category.all[2], name: "United Air", amount: 295, type: false})
Transaction.create({category: Category.all[2], name: "Airbnb", amount: 1300, type: false})

Transaction.create({category: Category.all[3], name: "William Sonoma", amount: 32.40, type: false})
Transaction.create({category: Category.all[3], name: "Yankee Candle", amount: 42.44, type: false})
Transaction.create({category: Category.all[3], name: "Restoration Hardware", amount: 3200.40, type: false})

Transaction.create({category: Category.all[4], name: "Coned", amount: 59.22, type: false})

Transaction.create({category: Category.all[5], name: "HBO", amount: 14.99, type: false})


Transaction.create({category: Category.all[6], name: "Maki Maki", amount: 21.21, type: false})
Transaction.create({category: Category.all[6], name: "Stone St Pizza", amount: 29.30, type: false})

Transaction.create({category: Category.all[7], name: "Lulu Lemon", amount: 212.30, type: false})



