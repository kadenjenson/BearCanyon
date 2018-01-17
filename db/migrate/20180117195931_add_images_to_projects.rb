class AddImagesToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :thumb_image, :text
    add_column :projects, :image_1, :text
    add_column :projects, :image_2, :text
    add_column :projects, :image_3, :text
    add_column :projects, :image_4, :text
    add_column :projects, :image_5, :text
  end
end
