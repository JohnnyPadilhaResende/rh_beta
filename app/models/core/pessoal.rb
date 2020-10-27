class Core::Pessoal < ApplicationRecord
  self.table_name = "core.pessoal"

  has_one :core_contato, 
  class_name: "Core::Contato", 
  foreign_key: :cdg_ordem, 
  primary_key: :cdg_ordem
  
end
