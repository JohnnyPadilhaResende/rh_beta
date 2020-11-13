class RelacionamentoFuncionalFuncao < ActiveRecord::Migration[6.0]
  def change
  end
  add_foreign_key 'core.funcional', 'core.funcao', column: :cdg_funcao, on_delete: :nullify
end
