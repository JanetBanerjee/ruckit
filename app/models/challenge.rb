class Challenge < ApplicationRecord
  belongs_to :user, optional: true;
  belongs_to :fixture, optional: true;


end
