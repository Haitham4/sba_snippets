class CommentsMailer < ApplicationMailer

  def create(comment)
    @comment = comment
    @snippet = comment.snippet

    mail(to: @comment.snippet.user.email ,subject: 'Check your comment section')
  end

end
