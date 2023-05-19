class Song
     @@count=0

     def self.count
     @@count 
    end

    @@genres=[]

    def self.genres
        @@genres.uniq
    end

    @@artists=[]

    def self.artists
        @@artists.uniq
    end

    @@genre_count={}

    def self.genre_count
        @@genre_count
    end

    @@artist_count={}

    def self.artist_count
        @@artist_count
    end
    attr_accessor :name, :artist, :genre

    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count+=1
        @@genres+=[genre]
        @@artists+=[artist]
        @@genre_count=@@genres.tally
        @@artist_count=@@artists.tally
    end
end

ninety_nine_problems=Song.new('99 problems','Jay-Z','rap')
