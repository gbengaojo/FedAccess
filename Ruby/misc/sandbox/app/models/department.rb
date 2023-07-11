class Department < ApplicationRecord
   has_many :comments, as: :commentable
end
