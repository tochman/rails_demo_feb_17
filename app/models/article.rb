class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :title , use: :slugged
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true

  has_many :comments

end
