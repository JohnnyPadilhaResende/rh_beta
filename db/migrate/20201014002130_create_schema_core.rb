class CreateSchemaCore < ActiveRecord::Migration[6.0]
  def change
    create_schema(:core)
  end
end
