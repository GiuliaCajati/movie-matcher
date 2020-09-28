class User < ApplicationRecord
    belongs_to :city 
    has_many :user_movie_matches
    has_many :movies, through: :user_movie_matches

    validates :name, presence: true, uniqueness: {case_sensitive: false}
    validates :age, numericality: { greater_than: 16}
    validates :phone_number, presence: true
    validates :bio, presence: true
    validates :city, presence: true

end
