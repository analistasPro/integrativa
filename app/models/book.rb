class Book < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :category
  validates :title , presence: true
  validates :author , presence: true
  validates :pages , presence: true
  validates :publisher , presence: true
  validates :language , presence: true
  validates :year , presence: true
  validates :internetprice , presence: true
  validates :normalprice , presence: true
  validates :kind , presence: true
  validates :section , presence: true
  scope :recipientes, ->{order("created_at desc")}
end
