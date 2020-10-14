class CreateCoreEnderecos < ActiveRecord::Migration[6.0]
  def change
    create_table "core.enderecos" do |t|
      t.integer :cdg_ordem
      t.string :nme_logradouro
      t.integer :cdg_logradouro
      t.integer :nmr_lote
      t.integer :nmr_quadra
      t.string :desc_complemento
      t.integer :nmr_cep

      t.timestamps
    end
  end
end
