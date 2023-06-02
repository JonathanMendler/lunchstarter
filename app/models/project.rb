class Project < ApplicationRecord
  belongs_to :categories
  has_many :rewards
end
