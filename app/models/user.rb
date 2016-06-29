class User < ApplicationRecord
  has_and_belongs_to_many :roles

  validates :first_name, presence: true
  validates :last_name, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  def name
    [first_name, last_name].join(' ')
  end
end
