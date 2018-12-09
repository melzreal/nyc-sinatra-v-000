class FigureTitle < ActiveRecord::Base
  # add relationships here
  belongs_to :titles
  belongs_to :figures

end
