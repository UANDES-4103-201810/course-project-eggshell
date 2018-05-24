class Multimedia < ApplicationRecord
  has_attached_file :image, styles: {medium: "600x600>"}
  belongs_to :project, optional: true
  belongs_to :profile, optional: true

end
