class PublicProfileSpeciality < ApplicationRecord
  belongs_to :speciality
  has_one :speciality
end
