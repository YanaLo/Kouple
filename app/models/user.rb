class User < ApplicationRecord
has_many :user_interests
has_many :interests, through: :user_interests
has_many :seeker_matches, class_name: "Match", foreign_key: "seeker_id"
has_many :matcher_matches, class_name: "Match", foreign_key: "matcher_id"
has_many :seekers, through: :seeker_matches, source: :seeker
has_many :matchers, through: :matcher_matches, source: :matcher
#validates_presence_of :email, :password
#validates_uniqueness_of :email
validates_confirmation_of :password
has_secure_password

  # def picture?
  #   if self.photo = ""
  #     self.photo = "/assets/avtar.jpg"
  #   end
  # end
end
