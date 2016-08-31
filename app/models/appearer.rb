class Appearer < ApplicationRecord
  belongs_to :user
  belongs_to :act

  validates_presence_of :user_id, :act_id, :tipo_persona, :razon_social, :apellido, :nombre, :tipo_interviniente, :calidad_compareciente, :tipo_identificacion, :identificacion, :estado_civil, :apellido_conyuge, :identificacion_conyuge, :separacion_bien

end
