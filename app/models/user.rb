class User < ApplicationRecord
  has_many :gossips, foreign_key: :author_id
end
