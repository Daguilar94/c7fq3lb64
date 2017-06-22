class UsersController < ApplicationController
  def edit
  end
  def expenses
    @expenses = User.includes(:expenses).find(current_user.id).expenses
  end
  def show
  end
  def update
  end
  def destroy
  end
end
