class Comment < ActiveRecord::Base
  belongs_to :user
  validates :body, presence: true, length: {maximum: 2000}
  after_create :remove_excessive!

  def remove_excessive!
    if Comment.all.count > 100
      Comment.order('created_at ASC').limit(Comment.all.count - 50).destroy_all
    end
  end
end
