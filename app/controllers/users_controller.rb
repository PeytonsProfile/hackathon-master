class UsersController < ApplicationController
  def show
    @user = User.find_by(params[:id])
    @follows = @user.follows.all
  end
end
