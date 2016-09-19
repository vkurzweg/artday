class Gallery < ActiveRecord::Base
  has_many :artists, dependent: :destroy
  has_many :exhibitions, dependent: :destroy
end
