class Pic < ApplicationRecord
  mount_base64_uploader :photo, PhotoUploader
  belongs_to :complaint
end
