class Project < ApplicationRecord
  validates_presence_of :title, 
                        :body

  mount_uploader :thumb_image, ProjectsUploader
  mount_uploader :image_1, ProjectsUploader
  mount_uploader :image_2, ProjectsUploader
  mount_uploader :image_3, ProjectsUploader
  mount_uploader :image_4, ProjectsUploader
  mount_uploader :image_5, ProjectsUploader

  # def self.by_position
  #   self.order("position ASC")
  # end

  scope :by_position, -> {
    order('position ASC')
  }

end