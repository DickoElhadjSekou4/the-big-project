class Gossip < ApplicationRecord
  belongs_to :author, class_name: "User"
  validates :title, presence: true, length: { minimum: 3, maximum: 14 }
  validates :content, presence: true
end