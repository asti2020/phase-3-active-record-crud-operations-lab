class Movie < ActiveRecord::Base

    def self.create_with_title(title)
        Movie.where(title: title).create
    end

    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id
        Movie.where("id = ?", params[self.id])
    end

    def self.find_movie_with_attributes
        Movie.where(attributes: self.attributes)
    end

    def self.find_movies_after_2002(year)
        if Movie.year > 2002
            puts Movie.all
        else
            puts "Movie with year wasnot there"
        end
    end

end