class FavoriteSerializer < ActiveModel::Serializer
    attributes :id, :babyname_id, :baby_name, :user_id, :username, :count,:sex,:ethnicity
end
  # t.bigint "babyname_id", null: false
  # t.bigint "user_id", null: fals