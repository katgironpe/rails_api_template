class User < ApplicationRecord
  has_and_belongs_to_many :roles

  validates :first_name, presence: true
  validates :last_name, presence: true

  # :timeoutable and :omniauthable
  devise :database_authenticatable, :confirmable, :lockable,
    :registerable, :recoverable, :rememberable, :trackable,
    :validatable

  def name
    [first_name, last_name].join(' ')
  end
end
