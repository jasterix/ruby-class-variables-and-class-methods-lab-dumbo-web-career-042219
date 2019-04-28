require 'pry'

class Song
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def name 
    @name
  end
  
  def artist
    @artist
  end
  
  def genre
    @genre
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre] 
        genre_count[genre] +=1
          # binding.pry
      else
        genre_count[genre] = 1
      end
      genre_count
    end
  end
  
  #   def self.genre_count
  #   genre_count_hash={}
  #   @@genres.each do |genre|
  #     if genre_count_hash[genre]
  #       genre_count_hash[genre] += 1
  #     else
  #       genre_count_hash[genre] = 1
  #     end
  #   end
  #   genre_count_hash
  # end
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist]
      end
    
    end
      
  end
    artist_count
end