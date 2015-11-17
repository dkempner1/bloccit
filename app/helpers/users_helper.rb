module UsersHelper
  def render_posts_for(user)
    if user.posts.any?
      render(user.posts).html_safe
    else
      "<p>This user has not submitted any posts yet.</p>".html_safe
    end
  end

  def render_comments_for(user)
    if user.comments.any?
      render(user.comments).html_safe
    else
      "<p>This user has not submitted any comments yet.</p>".html_safe
    end
  end

  def render_favorite_posts_for(user)
    if user.favorites.any?
      render(user.favorites.map{|fav| fav.post}).html_safe
    else
      "<p>This user has not favorited any posts yet.</p>".html_safe
    end
  end
end
