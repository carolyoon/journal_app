class Entry < ApplicationRecord
  validates :date, :text, presence: true 
end
