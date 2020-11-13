class CreateCoreServidoresDepartamentos < ActiveRecord::Migration[6.0]
  def change
    create_table 'core.servidoresDepartamento' do |t|
      t.integer :core_servidores_id
      t.integer :core_departamento_id

      t.timestamps
    end
  end
end
