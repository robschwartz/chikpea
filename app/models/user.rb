# t.string   "email",
# t.string   "first_name"
# t.string   "last_name"
# t.string   "stripe_id"
# t.string   "postcode"
# t.string   "phone"
# t.string   "primary_city"
# t.string   "street1"
# t.string   "street2"
# t.string   "city"
# t.string   "province"
# t.integer  "drop_in_credits"
# t.integer  "partner_id"
class User < ApplicationRecord
  attr_accessor :oauth_callback
  attr_accessor :current_password

  belongs_to :partner, required: false

  has_many :identities, dependent: :destroy
  has_many :children
  has_many :subscriptions

  accepts_nested_attributes_for :partner

  validates_presence_of   :email, if: :email_required?
  validates_uniqueness_of :email, allow_blank: true, if: :email_changed?
  validates_format_of     :email, with: Devise.email_regexp, allow_blank: true, if: :email_changed?

  validates_presence_of     :password, if: :password_required?
  validates_confirmation_of :password, if: :password_required?
  validates_length_of       :password, within: Devise.password_length, allow_blank: true

  def password_required?
    return false if email.blank? || !email_required?
    !persisted? || !password.nil? || !password_confirmation.nil?
  end

  def email_required?
    @oauth_callback != true
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :omniauthable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  def facebook
    identities.where( :provider => "facebook" ).first
  end

  def facebook_client
    @facebook_client ||= Facebook.client( access_token: facebook.accesstoken )
  end

end
