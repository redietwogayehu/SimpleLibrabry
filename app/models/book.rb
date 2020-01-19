class Book < ApplicationRecord
  belongs_to :user
  validates :title, :presence=> true, length: {maximum:150, minimum:3}
	validates :author, :presence => true, length: {maximum:25, minimum:3}
	validates :publisher, :presence => true, length: {maximum:25, minimum:3}
	validates :isbn, :presence=>true, length: {maximum:15, minimum:9}
end
