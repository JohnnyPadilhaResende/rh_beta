class CreateCoreFuncaos < ActiveRecord::Migration[6.0]
  def change
    create_table 'core.funcao' do |t|
      t.integer :cdg_funcao
      t.string :nme_funcao
      t.date :dta_inicio_funcao
      t.date :dta_fim_funcao

      t.timestamps
    end
  end
end
