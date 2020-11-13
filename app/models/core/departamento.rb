class Core::Departamento < ApplicationRecord
  self.table_name = "core.departamento"
  
  has_many :departamento_servidores, 
  class_name: "Core::ServidoresDepartamento", 
  foreign_key: :core_departamento_id, 
  source: :servidor

  has_many :servidores, through: :departamento_servidores
end
