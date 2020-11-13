class RelacionamentoFuncionalDepartamento < ActiveRecord::Migration[6.0]
  def change
  end
  add_foreign_key 'core.departamento', 'core.departamento', column: :cdg_dpto_pai, on_delete: :cascade
end
