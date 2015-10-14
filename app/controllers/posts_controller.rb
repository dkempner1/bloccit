class PostsController < ApplicationController
  def index
    @posts = Post.all
<<<<<<< HEAD
    @posts.each_with_index do |post, index|
      if index % 5 == 0
        post.title = "SPAM"
      end
    end
=======
>>>>>>> origin/master
  end

  def new
  end

  def edit
  end

  def show
  end
end
