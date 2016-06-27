class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :snippet

  validates_presence_of :text, :snippet, :user


  def author_commented?
    user == snippet.user
  end
end
