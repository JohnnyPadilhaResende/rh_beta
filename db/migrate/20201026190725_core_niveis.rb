class CoreNiveis < ActiveRecord::Migration[6.0]
  def change
    create_table "core.niveis" do |t|
      t.integer :cdg_ordem
      t.integer :xp
    end
  end
end
