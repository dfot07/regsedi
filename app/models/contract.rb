class Contract < ApplicationRecord
  belongs_to :user
  has_many :type_contract, dependent: :destroy
end
