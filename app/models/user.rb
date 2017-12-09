class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

  validates_presence_of :name


  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session['devise.facebook_data'] && session['devise.facebook_data']['extra']['raw_info']
        user.email = data['email'] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.name = auth.info.name
      user.password = Devise.friendly_token[0,20]
      user.image = auth.info.image # assuming the user model has an image
    end
  end

  def can?(action, object)
    begin
      policy_method = "#{action.to_s}?"
      Pundit.policy!(self, object).send(policy_method)
    rescue NoMethodError => e
      policy_name = "#{object.class.name.to_s}Policy"
      logger.debug "Undefined Pundit policy method: #{policy_name}##{policy_method}, returned false by default"
      false
    end
  end
end
