class Song < ApplicationRecord
  validates :title, :audio, presence: true
  # mount_uploader :audio, AudioUploader
  mount_base64_uploader :audio, AudioUploader
end
