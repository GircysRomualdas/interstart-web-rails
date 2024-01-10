class Comment < ApplicationRecord
    has_many :replies, dependent: :destroy
end
