class User < ApplicationRecord
    belongs_to :city 
    has_many :user_movie_matches
    has_many :movies, through: :user_movie_matches
    
    has_secure_password 

    validates :name, presence: true, uniqueness: {case_sensitive: false}
    validates :age, numericality: { greater_than: 16}
    validates :phone_number, presence: true
    validates :bio, presence: true
    validates :city, presence: true

    


    
    def number_of_matches
        current_list = self.movie_ids
        user_to_matches = {}
        User.where(city: self.city).map do |user|
        matches = (user.movie_ids & current_list).count
        user_to_matches[user.id] = matches
        end
        user_to_matches
    end
    
    def top_matches 
       sorted_matches = self.number_of_matches.sort_by{|k, v| v}.reverse
        top_five = sorted_matches[1...6]
    end

    def friends
        friend_hash = {}
        self.top_matches.each do |match|
            friend_hash[User.find(match[0]).name] = match[1]
        end
        friend_hash
    end

    def fav_movie_titles
        self.movie_ids.map {|movie| Movie.find(movie).title}
    end



    # private

    # def has_ten_movies


    # end 
end
