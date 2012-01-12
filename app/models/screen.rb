class Screen < ActiveRecord::Base
  attr_accessible :description, :file

  belongs_to :micropost, :polymorphic => true
  
  mount_uploader :file, FileUploader
end
