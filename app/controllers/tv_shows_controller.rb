class TvShowsController < ApplicationController

  def index
    @tv_shows = TvShow.search(params)
  end

  def mark_favorite
    @tv_show = TvShow.find(params[:id])
    @tv_show.mark_favorite(current_user)
    redirect_to tv_shows_path
  end

end
