class Entry < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :date, :text, presence: true
end
