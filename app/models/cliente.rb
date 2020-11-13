class Cliente < ApplicationRecord
    has_many :telefones, inverse_of: :cliente, dependent: :destroy
    
    accepts_nested_attributes_for :telefones, reject_if: :all_blank, allow_destroy: true
end
