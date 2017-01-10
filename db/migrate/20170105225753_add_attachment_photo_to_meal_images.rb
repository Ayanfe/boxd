class AddAttachmentPhotoToMealImages < ActiveRecord::Migration
  def self.up
    change_table :meal_images do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :meal_images, :photo
  end
end
