class AddVagasCounterToDepartamentos < ActiveRecord::Migration[6.0]
  def change
    add_column 'core.departamento', :vagas_preenchidas, :integer
  end
end
