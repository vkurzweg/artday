class Artist < ActiveRecord::Base
  has_many :galleries
  has_many :exhibitions, dependent: :destroy

  accepts_nested_attributes_for :galleries, :exhibitions, allow_destroy: true
end
