class CreateCorePessoals < ActiveRecord::Migration[6.0]
  def change
    create_table 'core.pessoal' do |t|
      t.integer :cdg_ordem
      t.integer :nmr_cpf
      t.string :nme_pessoa
      t.integer :sexo
      t.date :dta_nascimento

      t.timestamps
    end
  end
end
