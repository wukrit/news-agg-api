class StoriesController < ApplicationController

  def index
    @stories = Story.sort_by_newest
    render :json => @stories
  end

end
