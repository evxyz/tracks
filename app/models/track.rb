class Track < ActiveRecord::Base
  attr_accessible :title

  belongs_to :genre
 

end
