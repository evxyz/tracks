class Genre < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :track
end
