class Marginalization < ApplicationRecord
  belongs_to :user
  belongs_to :act

  validates_presence_of :user_id, :act_id, :marginacion, :ultima_modificacion, :canton_registro

end
