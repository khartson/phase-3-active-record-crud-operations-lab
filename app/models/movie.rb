class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        new_movie = Movie.new(title: title)
        new_movie.save
        new_movie
    end

    def self.first_movie
        self.first
    end 

    def self.last_movie
        self.last
    end 

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(id)
        self.find_by(id: id)
    end 

    def self.find_movie_with_attributes(args)
        self.find_by(args)
    end 

    def self.find_movies_after_2002
        self.where('release_date > ?', 2002)
    end 

    def update_with_attributes(args)
        self.update(args)
    end 

    def self.update_all_titles(title)
        self.update(title: title)
    end 

    def self.delete_by_id(id)
        self.find_by(id: id).destroy
    end 

    def self.delete_all_movies
        self.destroy_all
    end 
end