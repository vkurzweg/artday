class Exhibition < ActiveRecord::Base
  belongs_to :gallery
  belongs_to :artist

  accepts_nested_attributes_for :gallery, allow_destroy: true
  accepts_nested_attributes_for :artist, allow_destroy: true
end
