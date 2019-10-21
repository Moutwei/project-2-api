# frozen_string_literal: true

class Project < ApplicationRecord
  belongs_to :leader
  belongs_to :user
  has_many :employees
end
