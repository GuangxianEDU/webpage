class User < ActiveRecord::Base
	validates :name, :presence => true
	validates :email, :presence => true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, length: { within: 6..20 }
	validates_confirmation_of :password, if: lambda { |m| m.password.present? }
	before_save { self.email = email.downcase }

	private
  ## Strong Parameters 
  def user_params
    params.require(:user).permit(:name, :password_digest, :password, :password_confirmation)
  end
end
