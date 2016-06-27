class CommentMailerWorker
  @queue = :emails_queue
    def self.perform(comment_id)
      puts "-------------------------------------------- Mailer Worker "
      puts comment_id
      comment = Comment.find(comment_id)
      puts comment.inspect
      CommentsMailer.create(comment).deliver_now!
     end
end