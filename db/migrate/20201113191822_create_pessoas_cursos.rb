class CreatePessoasCursos < ActiveRecord::Migration[6.0]
  def change
    create_table :pessoas_cursos do |t|
      t.integer :cdg_ordem_pessoa
      t.integer :curso_id
      t.timestamps
    end
    add_foreign_key 'pessoas_cursos', 'core.pessoal', column: :cdg_ordem_pessoa 
    add_foreign_key 'pessoas_cursos', 'cursos', column: :curso_id 
  end
end
