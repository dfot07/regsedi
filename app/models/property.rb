class Property < ApplicationRecord
  belongs_to :user
  belongs_to :act

  validates_presence_of :user_id, :act_id, :numero_predio, :clave_catastral, :descripcion, :provincia, :zona, :superficie, :ubicacion, :lindero, :parroquia, :canton

end
