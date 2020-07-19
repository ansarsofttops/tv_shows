class TvShow < ApplicationRecord
  belongs_to :channel
  has_many :favorite_shows

  def self.search(params)
    self.joins(:channel).
      search_by_tv_show_or_channel(params[:tv_show_or_channel])
  end

  def self.search_by_tv_show_or_channel(tv_show_or_channel)
    if tv_show_or_channel.blank?
      self.where(nil)
    else
      self.where("tv_shows.show_name LIKE ? OR channels.name LIKE ?", "%#{tv_show_or_channel}%", "%#{tv_show_or_channel}%")
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

