# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :leaders
  has_many :projects
  has_many :employees
end
