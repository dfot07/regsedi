class Document < ApplicationRecord
  belongs_to :user
  belongs_to :act

  validates_presence_of :user_id, :act_id, :notaria, :canton, :fecha_escritura

end
