class Song < ApplicationRecord
  validates :title, :audio, presence: true
  mount_uploader :audio, AudioUploader
end
