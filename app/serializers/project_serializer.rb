# frozen_string_literal: true

class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :mission, :target, :requirements, :status, :leader_id, :employees
end
