class AppearerSearch < ApplicationRecord
  
  def search_appearers
  
    appearers = Appearer.all
    
    if apellidos.present? || nombres.present? || identificacion.present?
      appearers = appearers.where(["apellido LIKE ?", "%"+apellidos+"%"]) if apellidos.present?
      appearers = appearers.where(["nombre LIKE ?", "%"+nombres+"%"]) if nombres.present?
      appearers = appearers.where(["identificacion LIKE ?", identificacion]) if identificacion.present?
      return appearers
    end

  end

end
