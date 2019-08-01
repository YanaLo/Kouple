class Match < ApplicationRecord
  belongs_to :seeker, class_name: "User"
  belongs_to :matcher, class_name: "User"
end
