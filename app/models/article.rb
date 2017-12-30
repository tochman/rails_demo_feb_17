class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :title , use: :slugged

  validates :title, presence: true
  validates :content, presence: true

  has_many :comments
  belongs_to :author, class_name: 'User'


end
