class Project < ActiveRecord::Base
  include Sluggable

  has_many :pictures, dependent: :destroy

  scope :published,            -> { where(published: true) }

  accepts_nested_attributes_for :pictures, allow_destroy: true
end
