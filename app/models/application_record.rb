class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def format_date
    date.strftime("%m/%d/%y")
  end
end
