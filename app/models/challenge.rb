class Challenge < ApplicationRecord
  belongs_to :user, optional: true;
  belongs_to :fixture, optional: true;

  mount_uploader :image, ImageUploader
  mount_uploader :user_photo, UserImageUploader
end
