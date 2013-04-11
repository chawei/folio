class Review < ActiveRecord::Base
  attr_accessible :date, :description, :pdf, :title
end
