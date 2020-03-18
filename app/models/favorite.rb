class Favorite < ApplicationRecord
  belongs_to :babyname
  belongs_to :user

  validates :babyname_id, uniqueness: { scope: :user_id}
  
  # validates :babyname, uniqueness: true

  def username
    User.find_by(id: self.user_id).username
  end
  def baby_name
    Babyname.find_by(id: self.babyname_id).first_name
  end


  def sex
    Babyname.find_by(id: self.babyname_id).gender
  end

  def count
    Babyname.find_by(id: self.babyname_id).count
  end

  def ethnicity
    Babyname.find_by(id: self.babyname_id).ethnicity
  end

end
