class User < ApplicationRecord
  has_many :gossips, foreign_key: :author_id
  validates :first_name, presence: true
  validates :last_name, presence: true
end