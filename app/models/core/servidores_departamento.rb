class Core::ServidoresDepartamento < ApplicationRecord
    has_many :core_servidores,
    class_name: "Core::Pessoal",
    inverse_of: :core_servidores_departamento,

    has_one :core_departamento,
    class_name: "Core::Departamento",
    inverse_of: :core_departamento_pai
end
