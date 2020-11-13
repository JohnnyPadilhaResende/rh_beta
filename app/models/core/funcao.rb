class Core::Funcao < ApplicationRecord
  self.table_name = "core.funcao"

  belongs_to :core_pessoal,
  class_name: "Core::Pessoal",
  primary_key: "cdg_funcao",
  inverse_of: :core_funcaos
  
end
