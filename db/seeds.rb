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

Transaction.create({category: Category.all[0], name: "Best Buy", amount: 499, type: false})