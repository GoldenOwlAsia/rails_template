class AvatarUploader < BaseUploader
  process :convert => 'png'
  process :tags => ['post_picture']
end
