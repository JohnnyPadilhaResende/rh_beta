class AtualizarRelacionamentos < ActiveRecord::Migration[6.0]
  def change
  end
  add_foreign_key 'core.pessoal', 'core.funcao', column: :cdg_funcao, on_delete: :nullify
  add_foreign_key 'core.departamento', 'core.pessoal', column: :cdg_ordem_chefe, on_delete: :cascade
end
