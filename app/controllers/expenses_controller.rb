class ExpensesController < ApplicationController
  def index
    if (params[:concept] == nil) && (params[:category_id] == nil)
     @expenses = Expense.order("date DESC")
   else
     @expenses = Expense.where("concept like ? AND category_id like ?", "%#{params[:concept]}%", "%#{params[:category_id]}%").order("date DESC")
   end
  end
end
