class Photo < ActiveRecord::Base
  mount_uploader :image, AvatarUploader
end
