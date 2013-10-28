class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])

     @exercise  = current_user.exercises.build
      @efeed_items = current_user.efeed.paginate(page: params[:page])
#

#      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

 def about
  end

  def contact
  end
  
end
