class User < ApplicationRecord
	has_many :lien
	has_many :comment
	has_many :under_comment
end
