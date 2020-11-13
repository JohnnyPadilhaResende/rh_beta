class PessoasCurso < ApplicationRecord
    self.table_name = 'pessoas_cursos'

    belongs_to :pessoal, class_name: 'Core::Pessoal', foreign_key: :cdg_ordem_pessoa
    belongs_to :curso, class_name: 'Curso', foreign_key: :curso_id
end
