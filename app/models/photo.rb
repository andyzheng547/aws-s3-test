class Photo < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image
  validates_attachement_content_type :image, content_type: /\Aimage\/.*\Z/
end
