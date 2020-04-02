class Song
  
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist, genre)
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
  
  def self.artists
    
    
  end
  
  def self.genres
   @@genres.unique
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
    if genre_count[genre]
      genre_count[genre] += 1
    else
      genre_count[genre] = 1
    end
  end
  genre_count  
  end
  
  def self.artist_count
    
  end
end