class TvShow < ApplicationRecord
  belongs_to :channel
  has_many :favorite_shows

  def self.search(params)
    self.joins(:channel).
      search_by_tv_show(params[:tv_show]).
      search_by_channel(params[:channel])
  end

  def self.search_by_tv_show(show_name)
    if show_name.blank?
      self.where(nil)
    else
      self.where("tv_shows.show_name LIKE ?", "%#{show_name}%")
    end
  end

  def self.search_by_channel(channel_name)
    if channel_name.blank?
      self.where(nil)
    else
      self.where("channels.name LIKE ?", "%#{channel_name}%")
    end
  end

  def favorite(user)
    self.favorite_shows.where(user_id: user.id).present? ? 'Unmark' : 'Mark'
  end

  def mark_favorite(user)
    if self.favorite_shows.where(user_id: user.id).present?
      self.favorite_shows.where(user_id: user.id).destroy_all
    else
      self.favorite_shows.create(user_id: user.id)
    end
  end


end

