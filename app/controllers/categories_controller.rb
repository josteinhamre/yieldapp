class CategoriesController < ApplicationController

  def index
    get_budgets
    get_transactions
  end

  def prev_month
    @selected_month = (Date.parse("1 #{@selected_month}") << 1).strftime("%B %y")
    session[:selected_month] = @selected_month
    @prev_month = (Date.parse("1 #{@selected_month}") - 2).strftime("%B %y")
    get_budgets
    get_transactions
  end

  def next_month
    @selected_month = (Date.parse("1 #{@selected_month}") >> 1).strftime("%B %y")
    session[:selected_month] = @selected_month
    @prev_month = (Date.parse("1 #{@selected_month}") - 2).strftime("%B %y")
    get_budgets
    get_transactions
  end


end
