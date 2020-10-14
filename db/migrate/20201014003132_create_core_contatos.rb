class CreateCoreContatos < ActiveRecord::Migration[6.0]
  def change
    create_table "core.contatos" do |t|
      t.integer :cdg_ordem
      t.integer :end_telefone
      t.string :end_email

      t.timestamps
    end
  end
end
