class Project < ActiveRecord::Base
  include Sluggable

  has_many :pictures, dependent: :destroy

  accepts_nested_attributes_for :pictures, allow_destroy: true

  has_attached_file :title_picture, styles: {
    mini: "70x70#",
    thumb: "100x100#",
    medium: "200x200#",
    large: "400x400#"
  }

  before_post_process { |c| transliterate_file_name(:image) }

  validates_attachment_content_type :title_picture,
                                    content_type: /^image\/(png|gif|jpeg)/,
                                    message: :only_jpg_png_gif_format

  validates_attachment_size :title_picture,
                            less_than: 3.megabytes,
                            message: :only_less_than_3_mb
end
