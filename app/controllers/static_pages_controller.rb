require 'rss'
class StaticPagesController < ApplicationController
  def home
  end

  def pubs
  end
  
  def resources
  end

  def code
	 begin
		 @latest_blog_posts = RSS::Parser.parse(open('http://apknightcode.blogspot.com/feeds/posts/default?alt=rss').read, false).items[0...5]
	 rescue 
		 # Do nothing, just continue.  The view will skip the blog section if the feed is nil.
		 @latest_blog_posts = nil
	 end  
  end

end
