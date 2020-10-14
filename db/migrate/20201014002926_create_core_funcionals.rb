class CreateCoreFuncionals < ActiveRecord::Migration[6.0]
  def change
    create_table "core.funcional" do |t|
      t.integer :cdg_funcao
      t.integer :cdg_ordem
      t.integer :cdg_funcional
      t.integer :status
      t.integer :ref_anomes
      t.date :dta_admissao

      t.timestamps
    end
  end
end
