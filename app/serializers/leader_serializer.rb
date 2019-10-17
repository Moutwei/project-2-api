class LeaderSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :skills, :completed_projects, :projects
end
