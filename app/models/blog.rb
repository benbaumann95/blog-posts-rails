class Blog < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :title, presence: true
  validates :content, presence: true


end
