# frozen_string_literal: true

class Leader < ApplicationRecord
  has_many :projects
  belongs_to :user
end
