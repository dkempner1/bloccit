module PostsHelper

  def user_is_authorized_for_post?(post)
    current_user && (current_user == post.user || current_user.admin?)
   end

  def user_is_moderator_for_post?(post)
    current_user && (current_user == post.user || current_user.moderator?)
  end

  def render_title_for(post)
    output = "<h1>#{post.title}<br><small>"
    output += "submitted #{time_ago_in_words(post.created_at)} ago by #{post.user.name}</small></h1>"
    output.html_safe
  end
end
