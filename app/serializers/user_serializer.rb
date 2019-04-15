class UserSerializer < ActiveModel::Serializer
  attributes :id, :songs
  has_one :hidden_gem

  def songs
  self.object.songs.map do |song|
      {
      id: song.id,
      name: song.name,
      artist: song.artist,
      user_id: song.user_id,
      hidden_gem_id: song.hidden_gem_id,
      uri: song.song_uri
     }
   end
 end
end
