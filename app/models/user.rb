class User < ApplicationRecord

  has_many :authors, dependent: :destroy  
  belongs_to :categories ,:optional=>true
  has_many :reviews



  enum role: [:author, :client, :admin]

  after_initialize do
  if self.new_record?
    self.role ||= :author
  end
end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
