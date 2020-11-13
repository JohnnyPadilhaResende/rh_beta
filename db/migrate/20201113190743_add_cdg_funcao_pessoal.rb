class AddCdgFuncaoPessoal < ActiveRecord::Migration[6.0]
  def change
    add_column 'core.pessoal', :cdg_funcao, :integer
  end
end
