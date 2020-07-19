class TvShow < ApplicationRecord
  belongs_to :channel
  has_many :favorite_shows

  def self.search(params)
    self.includes(:channel)
  end

  def self.search_by_tv_show
  end

  def self.search_by_channel
  end

  def favorite(user)
    self.favorite_shows.where(user_id: user.id).present?
  end

end

