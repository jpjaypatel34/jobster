class Job < ActiveRecord::Base
	belongs_to :category
	belongs_to :user

	has_attached_file :image, styles: { medium: "554x400#" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
