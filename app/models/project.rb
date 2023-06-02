class Project < ApplicationRecord
  belongs_to :category
  has_many :rewards
end
