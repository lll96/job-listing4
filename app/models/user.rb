class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         def admin?
         is_admin
      end
 has_many :resumes
end

def display_name
  if self.username.present?
    self.username
  else
    self.email.split("@").first
  end
end
