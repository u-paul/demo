class Submission < ActiveRecord::Base
  belongs_to :community
  has_many :comments

  validates :community, presence: true
  validates :title, length: { minimum: 5 }, uniqueness: true
  validates :url, url: true
end
