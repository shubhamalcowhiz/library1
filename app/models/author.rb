class Author < ApplicationRecord
  has_many :books
  validates :title, presence: true
   validates :body, presence: true, length: { minimum: 8 }
end