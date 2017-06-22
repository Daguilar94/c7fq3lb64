class ExpensesController < ApplicationController
  before_action :authenticate_user!
  def index
    if (params[:concept] == nil) && (params[:category_id] == nil)
     #@expenses = Expense.order("date DESC")
     @expenses = current_user.expenses.order("date DESC")
   else
     #@expenses = Expense.where("concept like ? AND category_id like ?", "%#{params[:concept]}%", "%#{params[:category_id]}%").order("date DESC")
     @expenses = current_user.expenses.where("concept like ? AND category_id like ?", "%#{params[:concept]}%", "%#{params[:category_id]}%").order("date DESC")
   end
  end
end
