class Comment < ApplicationRecord
  belongs_to :article

  validates_presence_of :content
  validates_email_format_of :email,
                            message: 'Email is invalid',
                            allow_blank: true

  before_validation on: :create do |resource|
    resource.send(:initialize_state_machines, dynamic: :force)
  end

  default_scope -> { with_state(:approved) }
  scope :not_rejected, -> { unscoped.where.not(state: :rejected)}

  state_machine :state, initial: :submitted do
    event :approve do
      transition submitted: :approved
    end

    event :reject do
      transition submitted: :rejected
    end
  end
end
