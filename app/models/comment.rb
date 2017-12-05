class Comment < ApplicationRecord
  belongs_to :article

  validates_presence_of :content
  validates_email_format_of :email,
                            message: 'Email is invalid',
                            allow_blank: true
end
