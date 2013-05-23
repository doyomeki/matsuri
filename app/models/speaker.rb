class Speaker < ActiveRecord::Base
  attr_accessible :description, :name, :photo, :division
  image_accessor :photo
end
