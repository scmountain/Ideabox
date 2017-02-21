class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = current_user
  end

end
