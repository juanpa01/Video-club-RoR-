class User < ApplicationRecord
  has_many :lends
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true;
  validates :address, presence: true;
  validates :num_phone, presence: true;
end
