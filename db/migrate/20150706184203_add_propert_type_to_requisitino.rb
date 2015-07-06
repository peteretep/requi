class AddPropertTypeToRequisitino < ActiveRecord::Migration
  def change
    add_column :requisitions, :property_type, :string
  end
end
