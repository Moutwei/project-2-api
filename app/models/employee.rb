# frozen_string_literal: true

class Employee < ApplicationRecord
  belongs_to :user
  belongs_to :project
end
