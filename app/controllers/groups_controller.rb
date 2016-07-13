class GroupsController < ApplicationController

  # def index
  #   get 'index'
  # end

  def new
    @group = Group.new
  end

  def create
    @group = Group.create(group_params)
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
