class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :task, :task_status, :user_id
end
