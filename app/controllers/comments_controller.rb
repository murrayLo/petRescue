# code in comments controller modified from tutorial found at https://www.udemy.com/course/ruby-on-rails-for-beginners-step-by-step/learn/lecture/9012462#overview
class CommentsController < ApplicationController
before_action :authenticate_user!

def create
    @pet_report = PetReport.find(params[:pet_report_id]) # find pet report
    @comment = @pet_report.comments.create(comment_params)
    @comment.user_id = current_user.id if current_user # assign the user id of the current user to the comment
    @comment.username = current_user.username

    if @comment.save
        NewCommentMailer.new_comment(@comment).deliver_now # send email notification to owner of the original post
        flash[:success] = 'Comment Posted'
        redirect_to pet_report_path(@pet_report)
    else
        flash[:danger] = 'Could Not Post Comment'
    end
end

def update
    # Could not get edit functionality to work for comments
    @pet_report = PetReport.find(params[:pet_report_id])
    @comment = @pet_report.comments.find(params[:id])
    if @comment.update(comment_params)
        flash[:success] = 'Comment Updated Succesfully'
        redirect_to pet_report_path(@pet_report)
    else
        flash[:danger] = 'Could Not Update Comment'
        render 'edit'
    end
end

def edit
    @pet_report = PetReport.find(params[:pet_report_id])
    @comment = @pet_report.comments.find(params[:id])
end

def destroy
    @pet_report = PetReport.find(params[:pet_report_id])
    @comment = @pet_report.comments.find(params[:id])
    @comment.destroy
    flash[:danger] = 'Comment Removed'
    redirect_to pet_report_path(@pet_report)
end

    private

    def comment_params
        params.require(:comment).permit(:body)
    end

end