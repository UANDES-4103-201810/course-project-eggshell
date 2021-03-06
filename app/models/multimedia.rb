class Multimedia < ApplicationRecord
  has_attached_file :image, styles: {medium: "600x600>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  belongs_to :project, optional: true
  belongs_to :profile, optional: true

end
