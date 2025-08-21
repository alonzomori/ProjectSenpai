class Feature < ApplicationRecord
  acts_as_chat

  after_initialize :set_chat

  belongs_to :project
  has_many :messages, dependent: :destroy
  validates :name, presence: true
  def set_chat
    @chat = RubyLLM.chat
  end
end
