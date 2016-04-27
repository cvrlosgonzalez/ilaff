class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments
	has_attached_file :image,
	styles: { medium: "300x300", thumb: "150x150#" },
	:url =>':s3_domain_url',
	:path => '/:class/:attachment/:id_partition/:style/:filename'
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
