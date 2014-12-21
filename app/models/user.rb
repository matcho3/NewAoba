class User < ActiveRecord::Base
before_create :create_remember_token
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  belongs_to :operation
  has_many :answers
  # validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  # validates :reservation_id, presence: true
  # validates :birthday, presence:true

  # validate :add_error_sample


# , allow_blank: true or false

  # def add_error_sample
  #   # nameが空のときにエラーメッセージを追加する
  #   if reservation_id.empty?
  #     errors.add(:reservation_id, "に関係するエラーを追加")
  #     errors[:base] << "モデル全体に関係するエラーを追加"
  #   end
  # end



  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
