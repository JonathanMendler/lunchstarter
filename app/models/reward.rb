class Reward < ApplicationRecord
  belongs_to :projects
  has_many :pledges
end
