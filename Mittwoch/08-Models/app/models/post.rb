class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :category, throw: :comments

  after_commit :celebrate
  validates :title, presence: true, length: { minimum: 3, maximum: 255 }

  def celebrate
    puts "Hi there! Your post has been saved.#{self.title}"
  end
end