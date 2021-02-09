class MonthlyBudgetsController < ApplicationController
    def index 
        monthlyBudgets = MonthlyBudget.all
        render json: monthlyBudgets
    end

    def show
        monthlyBudget = MonthlyBudget.find(params[:id])
        render json: monthlyBudget
    end

    def create
        monthlyBudget = MonthlyBudget.create(monthlyBudget_params)
        render json: monthlyBudget
    end

    def destroy
        monthlyBudget = MonthlyBudget.find(params[:id])
        monthlyBudget.destroy
        render json: monthlyBudget
    end

    def update 
        monthlyBudget = MonthlyBudget.find(params[:id])
        monthlyBudget.update(monthlyBudget_params)
        render json: monthlyBudget
    end




    private 

    def monthlyBudget_params
        params.permit(:name, :year, :month, :budget, :user_id)
    end



end
