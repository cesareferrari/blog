class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable :omniauthable
  # :registerable     
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
