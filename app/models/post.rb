class Post < ActiveRecord::Base

  # def current_page
  #    current_page = Post.find(params[:id])
  #  end

  def next_post
    @posts = Post.order("created_at desc")
    @posts.each_with_index do |post,index|
      if post.id == self.id
        @next_index = index - 1
      end
    end
    @posts[@next_index]

  end

  def prev_post
    @posts = Post.order("created_at desc")
    @posts.each_with_index do |post,index|
      if post.id == self.id
        @next_index = index + 1
      end
    end
    @posts[@next_index]
  end
  
  # def public_timeline(options = { :count => 5 })
  #    response = get('1/statuses/public_timeline', options)
  #    format.to_s.downcase == 'xml' ? response['statuses'] : response
  #  end
  
end
