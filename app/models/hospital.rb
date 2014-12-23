class Hospital < ActiveRecord::Base
  has_many :shifts, dependent: :destroy
  belongs_to :postal
end
