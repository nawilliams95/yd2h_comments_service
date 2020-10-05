class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]
  

  # GET /comments
  def index
    @comments = Comment.all
    render json:  @comments
  end

  # GET /comments/1
  def show
    @fixed_date = date(@comment.created_at, @comment.updated_at)
    render json: { comment: @comment, fixed_date: @fixed_date}
  end

  #Get coment by post id
  def post_comments
    @comment = Comment.where('post_id = ?', params[:post_id] )
    render json: @comment
  end

  # POST /comments
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:post_id, :user_id, :contentauthor)
    end

    def date(created_at, updated_at) 
      {
        created: Time.at(created_at).strftime("%B %e, %Y at %I:%M %p"),
        edited: Time.at(updated_at).strftime("%B %e, %Y at %I:%M %p")
      }
    end
end
