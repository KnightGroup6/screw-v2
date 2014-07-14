class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :firstname, :lastname

  has_many :applications
  has_many :images
  belongs_to :title
  belongs_to :businesstype
  belongs_to :employeenumber



	def fullname
		firstname+ " " +lastname
	end

end