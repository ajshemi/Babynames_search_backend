class Babyname < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites

    scope :sort_rank, lambda {order("rank asc")}
    scope :sort_name, lambda {order('first_name asc')}

    def self.name_search(query)
        where(first_name: query)
    end
        
    def self.search_by_gender(gender,limit)
        where(gender:gender).limit(limit)
    end

    def self.search_by_ethnicity(ethnicity,limit)
        where(ethnicity:ethnicity).limit(limit)
    end

end
