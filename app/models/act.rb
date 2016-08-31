class Act < ApplicationRecord
  belongs_to :user
  has_many :appearer, dependent: :destroy
  has_many :property, dependent: :destroy
  has_many :assessment, dependent: :destroy
  has_many :marginalization, dependent: :destroy
  has_many :document, dependent: :destroy
  has_many :effective_possession, dependent: :destroy
  has_many :horizontal_property, dependent: :destroy

  validates_presence_of :user_id, :descripcion, :especificacion, :tipo, :libro, :repertorio, :fecha_repertorio, :inscripcion, :fecha_inscripcion, :cuantia, :unidad
  
end
