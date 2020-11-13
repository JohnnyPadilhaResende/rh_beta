class CreateCursos < ActiveRecord::Migration[6.0]
  def change
    create_table :cursos do |t|
      t.string :nome, :null => false
      t.integer :cdg_ordem_instrutor, :null => false
      t.date :data_inicio, :null => false
      t.date :data_fim, :null => false
      t.integer :numero_vagas, :null => false
      t.integer :numero_vagas_ocupadas, :default => 0
      t.decimal :nota

      t.timestamps
    end
    # add_foreign_key 'cursos', 'alunos', column: :aluno_id
  end
end
