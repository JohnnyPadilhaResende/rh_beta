class Core::Contato < ApplicationRecord
    self.table_name = "core.contatos"
    
    belongs_to :core_pessoal, 
    class_name: "Core::Pessoal", 
    foreign_key: :cdg_ordem, 
    primary_key: :cdg_ordem
end
