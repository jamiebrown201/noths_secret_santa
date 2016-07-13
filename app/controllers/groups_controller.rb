class GroupsController < ApplicationController

  # def index
  #   get 'index'
  # end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user_id = current_user.id
    @group.save
    redirect_to '/'
  end

  def show
    @group = Group.find(params[:id])
  end

  private

  def group_params
    params.require(:group).permit(:name, :price_limit, :no_users, :date)
  end

end
