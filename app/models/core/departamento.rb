class Core::Departamento < ApplicationRecord
  self.table_name = "core.departamento"

  has_many :core_chefes,
  class_name: "Core::Pessoal",
  foreign_key: "cdg_ordem",
  dependent: :restrict_with_exception,
  inverse_of: :core_departamento_servidores

  belongs_to :core_departamento_pai,
  class_name: "Core::Departamento",
  primary_key: "cdg_dpto",
  inverse_of: :core_departamento

  has_one :core_departamento,
  class_name: "Core::Departamento",
  foreign_key: "cdg_dpto_pai",
  inverse_of: :core_departamento_pai
  
end
