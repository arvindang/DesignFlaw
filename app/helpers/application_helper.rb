module ApplicationHelper
  
  def markdown(text)
    options = [:hard_wrap, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
    Redcarpet.new(text, *options).to_html.html_safe
  end
  
  def tweets
      @tweets = Twitter.user_timeline("arvindang", options = {:count => 5})
    end

    def tweet_handle_parser(tweet)
      tweet.gsub(/@(\w+)/) { |handle| "<a href=http://twitter.com/#{$1} target=_new>@#{$1}</a>" }
    end
  
end
