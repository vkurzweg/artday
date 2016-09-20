class Artist < ActiveRecord::Base
  has_many :galleries, through: :exhibitions
  has_many :exhibitions

  # accepts_nested_attributes_for :galleries, :exhibitions, allow_destroy: true
end
