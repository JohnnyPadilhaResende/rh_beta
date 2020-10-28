class Testes < ActiveRecord::Migration[6.0]
  def change
    create_table :testes  do |t|
      t.string :nome
    end
  end
end
