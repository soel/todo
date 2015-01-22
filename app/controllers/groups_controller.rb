class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  before_action :set_grmail, only: [:new, :edit]

  respond_to :html

  def index
    @groups = Group.all
    respond_with(@groups)
  end

  def show
    respond_with(@group)
  end

  def new
    @group = Group.new
    respond_with(@group)
  end

  def edit
  end

  def create
    @group = Group.new(group_params)
    @group.save
    respond_with(@group)
  end

  def update
    @group.update(group_params)
    respond_with(@group)
  end

  def destroy
    @group.destroy
    respond_with(@group)
  end

  private
    def set_group
      @group = Group.find(params[:id])
    end

    def set_grmail
      @grmail = Grmail.all
    end

    def group_params
      #params.require(:group).permit(:name)
      p = params.require(:group).permit(:name, :grmail_ids => [])
      p[:grmail_ids] = [] if p[:grmail_ids].nil?
      p
    end
end
