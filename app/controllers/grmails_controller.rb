class GrmailsController < ApplicationController
  before_action :set_grmail, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @grmails = Grmail.all
    respond_with(@grmails)
  end

  def show
    respond_with(@grmail)
  end

  def new
    @grmail = Grmail.new
    respond_with(@grmail)
  end

  def edit
  end

  def create
    @grmail = Grmail.new(grmail_params)
    @grmail.save
    respond_with(@grmail)
  end

  def update
    @grmail.update(grmail_params)
    respond_with(@grmail)
  end

  def destroy
    @grmail.destroy
    respond_with(@grmail)
  end

  private
    def set_grmail
      @grmail = Grmail.find(params[:id])
    end

    def grmail_params
      params.require(:grmail).permit(:email)
    end
end
