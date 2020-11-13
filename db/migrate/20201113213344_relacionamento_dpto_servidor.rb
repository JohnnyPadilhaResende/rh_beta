class RelacionamentoDptoServidor < ActiveRecord::Migration[6.0]
  def change
  end
  add_foreign_key 'core.servidoresDepartamento', 'core.pessoal', column: :core_servidores_id, on_delete: :cascade
  add_foreign_key 'core.servidoresDepartamento', 'core.departamento', column: :core_departamento_id, on_delete: :cascade
  remove_foreign_key 'core.departamento', column: :cdg_ordem_servidores
end