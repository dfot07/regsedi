class HorizontalProperty < ApplicationRecord
  belongs_to :user
  belongs_to :act

  validates_presence_of :user_id, :act_id, :propiedad, :alicuota, :expensas, :comparece_menor, :nombres_tutor, :fecha_adjudicacion, :fecha_acta_notarial

end
