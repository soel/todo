class CommentattachmentsController < ApplicationController
  before_action :set_commentattachment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @commentattachments = Commentattachment.all
    respond_with(@commentattachments)
  end

  def show
    respond_with(@commentattachment)
  end

  def new
    @commentattachment = Commentattachment.new
    respond_with(@commentattachment)
  end

  def edit
  end

  def create
    @commentattachment = Commentattachment.new(commentattachment_params)
    @commentattachment.save
    respond_with(@commentattachment)
  end

  def update
    @commentattachment.update(commentattachment_params)
    respond_with(@commentattachment)
  end

  def destroy
    @commentattachment.destroy
    respond_with(@commentattachment)
  end

  private
    def set_commentattachment
      @commentattachment = Commentattachment.find(params[:id])
    end

    def commentattachment_params
      params.require(:commentattachment).permit(:comment_id, :document)
    end
end
