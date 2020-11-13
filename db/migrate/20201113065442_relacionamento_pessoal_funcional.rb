class RelacionamentoPessoalFuncional < ActiveRecord::Migration[6.0]
  def change
  end
  add_foreign_key 'core.funcional', 'core.pessoal', column: :cdg_ordem, on_delete: :cascade
end
