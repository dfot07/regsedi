class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :act
  has_many :book
  has_many :appearer
  has_many :property
  has_many :assessment
  has_many :marginalization
  has_many :document
  has_many :effective_possession
  has_many :horizontal_property
  has_many :contract
  has_many :type_contract
  
end
