class Act < ApplicationRecord
	belongs_to :user
	has_many :appearer
	has_many :property

  validates_presence_of :user_id, :descripcion, :especificacion, :tipo, :libro, :repertorio, :fecha_repertorio, :inscripcion, :fecha_inscripcion, :cuantia, :unidad
  
end
