class Project < ActiveRecord::Base
  has_many :contributors, through: :contributors, class_name: 'User'
  has_many :sub_projects, class_name: 'Project', foreign_key: :parent_project_id
  belongs_to :parent_project, class_name: 'Project'
  has_many :equations
end
