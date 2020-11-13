class Core::Pessoal < ApplicationRecord
  self.table_name = "core.pessoal"

  has_one :core_contato, 
  class_name: "Core::Contato", 
  foreign_key: :cdg_ordem, 
  primary_key: :cdg_ordem
  
  has_many :core_funcaos,
  class_name: "Core::Funcao",
  inverse_of: :core_funcional,
  foreign_key: "cdg_funcao"

  belongs_to :core_servidores_departamento,
  class_name: "Core::servidores_departamento",
  inverse_of: :core_servidores,
  counter_cache: :vagas_preenchidas

  belongs_to :core_departamento_chefe,
  class_name: "Core::Departamento",
  primary_key: "cdg_ordem",
  foreign_key: "cdg_ordem_chefe",
  inverse_of: :core_chefes
  
end
