class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # 
  devise :database_authenticatable, :registerable, :recoverable,
		 :rememberable, :trackable, :validatable, :omniauthable,
		 :confirmable, :lockable, :timeoutable
end
