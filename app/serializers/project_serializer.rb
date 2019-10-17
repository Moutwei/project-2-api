class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :mission, :target, :requirements, :status, :leader_id
end
