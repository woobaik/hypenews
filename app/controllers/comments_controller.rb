class CommentsController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create, :edit, :destroy, :update]
    before_action :find_shoe, only: [:create]
    before_action :find_comment, only: [:destroy]
    def create
        @comment = @shoe.comments.new(comment_params)
        @comment.user_id = current_user.id
        @comment.save
        # if @comment.save
        #     redirect_back(fallback_location: root_path, notice: 'Comment is posted')
        # else 
        #     redirect_back(fallback_location: root_path, notice: "Oops something went wrong! #{@comment.errors.full_messages}")
        # end
    end

    def destroy
        @comment.destroy
    end
    private

    def comment_params
        params.require(:comment).permit(:body)
    end

    def find_shoe
        @shoe = Shoe.friendly.find(params[:shoe_id])
    end

    def find_comment
        @comment = Comment.find([params[:id]])[0]
    end

end