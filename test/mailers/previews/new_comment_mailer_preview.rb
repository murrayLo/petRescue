# Preview all emails at http://localhost:3000/rails/mailers/new_comment_mailer
class NewCommentMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/new_comment_mailer/new_comment
  def new_comment
    comment = Comment.last
    NewCommentMailer.new_comment(comment)
  end

end
