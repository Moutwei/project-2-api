class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :task, :task_status, :user_id, :project_id
end
