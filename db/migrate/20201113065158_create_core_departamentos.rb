class CreateCoreDepartamentos < ActiveRecord::Migration[6.0]
  def change
    create_table 'core.departamento' do |t|
      t.string :nme_dpto
      t.integer :vagas
      t.integer :cdg_ordem_servidores
      t.integer :cdg_ordem_chefe
      t.date :dta_inicio_dpto
      t.date :dta_fim_dpto
      t.integer :vagas_dispo
      t.integer :cdg_dpto
      t.integer :cdg_dpto_pai

      t.timestamps
    end
  end
end
