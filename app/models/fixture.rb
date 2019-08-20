class Fixture < ApplicationRecord
  has_many :challenges;
  belongs_to :user, optional: true;

  mount_uploader :image, ImageUploader

end
