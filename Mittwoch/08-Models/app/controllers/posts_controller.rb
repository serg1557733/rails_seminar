require_relative "../views/posts_view"

class PostsController
  def initialize
    @view = PostsView.new
  end

  def index
    @view.display(Post.all)
  end

  def create
    post_params = @view.get_post_params
    Post.create(post_params)
  end

  def update
    Post.update
  end

  def destroy(id)
    Post.find(id: id)
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
  end
end
