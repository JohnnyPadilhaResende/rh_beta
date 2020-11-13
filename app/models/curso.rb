class Curso < ApplicationRecord
    has_many :pessoas_cursos, class_name: "PessoasCurso"
    has_many :pessoals, class_name: "Core::Pessoal", through: :pessoas_cursos

    accepts_nested_attributes_for :pessoas_cursos, 
        reject_if: :all_blank, allow_destroy: true
end
