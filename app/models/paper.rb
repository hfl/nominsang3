class Paper < ApplicationRecord
  belongs_to :issue
  belongs_to :author
end
