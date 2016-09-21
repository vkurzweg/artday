class Exhibition < ActiveRecord::Base
  belongs_to :gallery
  belongs_to :artist

  has_attached_file :photo, styles: {large: "600x600>", medium: "300x300>", thumb: "150x150"}
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  accepts_nested_attributes_for :gallery, allow_destroy: true
  accepts_nested_attributes_for :artist, allow_destroy: true
end
