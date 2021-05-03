class NewCommentMailer < ApplicationMailer
#Controller for comment mailer
  def new_comment(comment)
    @comment = comment
    @pet_report = @comment.pet_report

    mail to: @pet_report.user.email,
    subject: "New Comment on Your PetRescue Post"
  end
end