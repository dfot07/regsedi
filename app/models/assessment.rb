class Assessment < ApplicationRecord
  belongs_to :user
  belongs_to :act

  validates_presence_of :user_id, :act_id, :posee_gravamen, :tipo_gravamen, :genera_gravamen, :tipo_genera_gravamen, :fecha_constitucion, :fecha_cancelacion

end
