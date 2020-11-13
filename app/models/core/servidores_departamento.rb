class Core::ServidoresDepartamento < ApplicationRecord
    self.table_name = "core.servidoresDepartamento"

    # belongs_to :servidor, 
    # class_name: "Core::Pessoal", 
    # foreign_key: :core_servidores_id, 
    # primary_key: :id

    # belongs_to :departamento, 
    # class_name: "Core::Departamento", 
    # foreign_key: :core_departamento_id, 
    # primary_key: :id

    has_many :servidores, 
    class_name: "Core::Pessoal",
    primary_key: :core_servidores_id,
    foreign_key: :id
end
