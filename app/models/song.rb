class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist_name
  end
  
  def artist_name=(artist_name)
    self.artist = Artist.find_by_or_create(name: artist_name)
  end
end
