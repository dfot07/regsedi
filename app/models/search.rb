class Search < ApplicationRecord

  def search_acts
  
    acts = Act.all

    acts = acts.where(["repertorio = ?",repertorio]) if repertorio.present?
    acts = acts.where(["fecha_repertorio = ?",frepertorio]) if frepertorio.present?
    acts = acts.where(["inscripcion = ?", inscripcion]) if inscripcion.present?
    acts = acts.where(["fecha_inscripcion = ?", finscripcion]) if finscripcion.present?
    return acts

  end

  def search_appearers
  
    appearers = Appearer.all
    appearers = appearers.where(["apellido LIKE ?","%#{apellidos}%"]) if apellidos.present?

    return appearers

  end

end
