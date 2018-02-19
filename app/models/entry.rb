class Entry < ApplicationRecord
  has_many :comments
  validates :date, :text, presence: true
end
