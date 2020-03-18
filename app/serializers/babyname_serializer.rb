class BabynameSerializer < ActiveModel::Serializer
  attributes :id, :year, :gender,:ethnicity,:first_name,:count,:rank
  has_many :favorites
end
# t.integer "year"
# t.string "gender"
# t.string "ethnicity"
# t.string "first_name"
# t.integer "count"
# t.integer "rank"