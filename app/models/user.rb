class User < ApplicationRecord
has_many :user_interests
has_many :interests, through: :user_interests
has_many :seeker_matches, class_name: "Match", foreign_key: "seeker_id"
has_many :matcher_matches, class_name: "Match", foreign_key: "matcher_id"
has_many :seekers, through: :seeker_matches, source: :seeker
has_many :matchers, through: :matcher_matches, source: :matcher
#validates_presence_of :email, :password
#validates_uniqueness_of :email
# validates_confirmation_of :password
# validate :current_user
has_secure_password
# def current_user
#   if session[:user_id]
#       User.find(session[:user_id])
#   else
#       false
#   end
end
  # def picture?
  #   if self.photo = ""
  #     self.photo = "/assets/avtar.jpg"
  #   end
  # end

  # def user_identity_and_interests
  #   @users = UserInterest.all.select{|use| use.hobbie_id == session[:user_id]}
  #
  # end
