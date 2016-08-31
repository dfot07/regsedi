class EffectivePossession < ApplicationRecord
  belongs_to :user
  belongs_to :act

  validates_presence_of :user_id, :act_id, :numero_acuerdo, :causante, :fecha_defuncion, :heredero, :conyuge_sobreviviente

end
