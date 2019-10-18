# frozen_string_literal: true

class LeaderSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :skills, :completed_projects, :projects, :user_id
end
