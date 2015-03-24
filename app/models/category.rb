class Category < ActiveRecord::Base
	mount_uploader :icon, IconUploader
	has_many :taxonomies
end
