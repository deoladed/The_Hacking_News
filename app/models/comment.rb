class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :lien
  has_many :under_comment
end
