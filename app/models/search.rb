class Search < ApplicationRecord

  def search_acts
  
    acts = Act.all
    
    if repertorio.present? || repertorio.present? || inscripcion.present? || finscripcion.present?
      acts = acts.where(["repertorio = ?",repertorio]) if repertorio.present?
      acts = acts.where(["fecha_repertorio = ?",frepertorio]) if frepertorio.present?
      acts = acts.where(["inscripcion = ?", inscripcion]) if inscripcion.present?
      acts = acts.where(["fecha_inscripcion = ?", finscripcion]) if finscripcion.present?
      return acts
    end

  end

end
