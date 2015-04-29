class Car < ActiveRecord::Base
  mount_uploader :featured_image, ImageUploader
  mount_uploaders :image, ImageUploader
end
