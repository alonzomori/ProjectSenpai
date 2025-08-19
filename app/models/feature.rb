class Feature < ApplicationRecord
  belongs_to :project
  has_many :messages, dependent: :destroy
  validates :name, presence: true
end
