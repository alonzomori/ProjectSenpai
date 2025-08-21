class Feature < ApplicationRecord
  acts_as_chat

  belongs_to :project
  has_many :messages, dependent: :destroy
  validates :name, presence: true
end
