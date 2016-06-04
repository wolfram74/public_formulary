class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.boolean :private
      t.integer :parent_project_id
      t.timestamps null: false
    end
  end
end
