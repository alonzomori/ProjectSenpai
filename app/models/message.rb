class Message < ApplicationRecord
  belongs_to :feature
  validates :role, presence: true
  validates :content, presence: true
end
