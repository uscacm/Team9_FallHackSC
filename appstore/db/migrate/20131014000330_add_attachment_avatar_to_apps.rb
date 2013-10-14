class AddAttachmentAvatarToApps < ActiveRecord::Migration
  def self.up
    change_table :apps do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :apps, :avatar
  end
end
