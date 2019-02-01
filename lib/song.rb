require 'pry'

class Song
extend Memorable::ClassMethods
extend Memorable::InstanceMethods
extend Findable::ClassMethods
include Paramable
attr_accessor :name
attr_reader :artist

@@songs = []

  def self.all
    @@songs
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end
end