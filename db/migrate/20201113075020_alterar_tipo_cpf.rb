class AlterarTipoCpf < ActiveRecord::Migration[6.0]
  def change
    change_column 'core.pessoal', :nmr_cpf, :string
  end
end
