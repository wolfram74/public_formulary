class AddFieldsToEquations < ActiveRecord::Migration
  def change
    add_column(:equations, :description, :string)
    add_column(:equations, :project_id, :integer)
  end
end
