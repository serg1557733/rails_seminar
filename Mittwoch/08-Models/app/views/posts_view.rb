class PostsView

  def display(posts)
    puts "Displaying all posts..."
    posts.each do |post|
        puts "Title: #{post.title}, URL: #{post.url}"
    end
  end


  def get_post_params
    print "Please enter the title and URL of the post:"
    title = gets.chomp.to_s
    print "Please enter the URL of the post:"
    url = gets.chomp.to_s
    { title: title, url: url }
  end
end
