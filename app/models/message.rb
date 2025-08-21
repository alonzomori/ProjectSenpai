class Message < ApplicationRecord
  acts_as_message

  belongs_to :feature
  validates :role, presence: true

  def build_prompt
    prompt = <<-PROMPT
    You are a senior-level experienced programmer and teacher.

    I am a beginner developer who wants to learn coding in a beginner-friendly environment.

    Dont give any answer but lead me guide me to it in a step by step instructions.
    #{content}
    PROMPT
  end

  def chat
    self.feature
  end
end
