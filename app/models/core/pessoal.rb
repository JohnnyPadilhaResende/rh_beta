class Core::Pessoal < ApplicationRecord
  self.table_name = "core.pessoal"

  has_one :core_nivel

  has_many :cursos, class_name: "Curso"
  has_many :pessoas_cursos, class_name: "PessoasCurso", through: :pessoas_cursos  
end
