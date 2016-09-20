class Gallery < ActiveRecord::Base
  has_many :artists, through: :exhibitions
  has_many :exhibitions, dependent: :destroy

  accepts_nested_attributes_for :artists, allow_destroy: true
end
