class CreateCoreInstrucoes < ActiveRecord::Migration[6.0]
  def change
    create_table 'core.instrucao' do |t|
      t.integer :cdg_grau_instrucao
      t.string :nme_curso
      t.string :nme_instituicao_ensino

      t.timestamps
    end
  end
end
