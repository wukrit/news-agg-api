class StoriesController < ApplicationController

  def index
    @stories = Story.sort_by_newest
    # respond_to do |format|
    #   format.json do
    #     render json: @stories.to_json
    #   end
    # end
    render :json => @stories
  end

end
