class Core::Pessoal < ApplicationRecord
  self.table_name = "core.pessoal"

  has_one :core_nivel

end
