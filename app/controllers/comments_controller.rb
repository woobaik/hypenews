class CommentsController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create, :edit, :destroy, :update]
    before_action :find_shoe, only: [:create]
    def create
        @comment = @shoe.comments.new(comment_params)
        @comment.user_id = current_user.id
        if @comment.save
            redirect_back(fallback_location: root_path, notice: 'Comment is posted')
        else 
            redirect_back(fallback_location: root_path, notice: 'Oops something went wrong! please try in next 5 mins')
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:body, :post_id)
    end

    def find_shoe
        @shoe = Shoe.friendly.find(params[:shoe_id])
    end

end