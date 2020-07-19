class TvShowsController < ApplicationController
  def index

    @tv_shows = TvShow.search(params)

  end
end
